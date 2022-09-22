import os
import random
import openai
import numpy as np
import hashlib
import yaml
from tarski.io import PDDLReader
from tarski.syntax.formulas import *
import json

PREPARE_DATA_CMD = 'openai tools fine_tunes.prepare_data -f'


class Prompt_Preparer():
    def __init__(self, config_file):
        self.data = None
        self.read_config(config_file)
        self.instances_template = f"./dataset/{self.data['domain']}/train_{self.data['instances_template']}"
        self.dataset = 'dataset.jsonl'
        self.completed = 'completed.txt'
        with open(self.completed, 'r') as f:
            lines = file.readlines()
            self.completed_list = [line.rstrip() for line in lines]




    def read_config(self, config_file):
        with open(config_file, 'r') as file:
            self.data = yaml.safe_load(file)

    def compute_plan(self, domain, instance, timeout=30):
        fast_downward_path = os.getenv("FAST_DOWNWARD")
        # Remove > /dev/null to see the output of fast-downward
        assert os.path.exists(f"{fast_downward_path}/fast-downward.py")
        cmd = f"timeout {timeout}s {fast_downward_path}/fast-downward.py {domain} {instance} --search \"astar(lmcut())\" > /dev/null 2>&1"
        os.system(cmd)

    def get_sorted(self,init_atoms):
        return sorted(init_atoms,
                      key=lambda x: x.symbol.name + " " + " ".join([subterm.name for subterm in x.subterms]))

    def parse(self,init_goal_preds, OBJS):
        TEXT = ""
        predicates = []

        init_goal_preds = list(init_goal_preds)
        for atom in init_goal_preds:
            objs = []
            for subterm in atom.subterms:
                objs.append(OBJS[subterm.name])
            predicates.append(self.data['predicates'][atom.symbol.name].format(*objs))
        if len(predicates) > 1:
            TEXT += ", ".join(predicates[:-1]) + f" and {predicates[-1]}"
        else:
            TEXT += predicates[0]
        return TEXT

    def parse_problem(self,problem, shuffle):

        OBJS = self.data['encoded_objects']

        init_atoms = self.get_sorted(problem.init.as_atoms())
        goal_preds = self.get_sorted(problem.goal.subformulas) if hasattr(problem.goal, 'subformulas') else [problem.goal]

        if shuffle:
            random.shuffle(init_atoms)
            random.shuffle(goal_preds)
        # print(shuffle,init_atoms)
        # print(goal_preds)
        # ----------- INIT STATE TO TEXT ----------- #
        INIT = self.parse(init_atoms, OBJS)

        # ----------- GOAL TO TEXT ----------- #
        GOAL = self.parse(goal_preds, OBJS)

        return INIT, GOAL

    def fill_template(self,INIT, GOAL, PLAN):
        text = ""
        if INIT != "":
            text += "\n[STATEMENT]\n"
            text += f"As initial conditions I have that, {INIT.strip()}."
        if GOAL != "":
            text += f"\nMy goal is to have that {GOAL}."
        if PLAN != "":
            text += f"\n\nMy plan is as follows:\n\n[PLAN]{PLAN}\n"
        else:
            text += f"\n\nMy plan is as follows:\n\n[PLAN]{PLAN}"

        # TODO: Add this replacement to the yml file -- Use "Translations" dict in yml
        text = text.replace("-", " ").replace("ontable", "on the table")
        return text

    def instance_to_text_blocksworld(self,problem, shuffle=False):
        """
        Function to make a blocksworld instance into human-readable format
        :param get_plan: Flag to return the plan as text as well
        """

        OBJS = self.data['encoded_objects']

        # ----------- PARSE THE PROBLEM ----------- #
        INIT, GOAL = self.parse_problem(problem, shuffle)

        # ----------- PLAN TO TEXT ----------- #

        plan_file = "sas_plan"
        PLAN = "\n"
        with open(plan_file) as f:
            plan = [line.rstrip() for line in f][:-1]

        for action in plan:
            action = action.strip("(").strip(")")
            act_name, objs = action.split(" ")[0], action.split(" ")[1:]
            objs = [OBJS[obj] for obj in objs]
            PLAN += self.data['actions'][act_name].format(*objs) + "\n"
        PLAN += "[PLAN END]"

        return INIT, GOAL, PLAN

    def get_problem(self, instance, domain):
        reader = PDDLReader(raise_on_error=True)
        reader.parse_domain(domain)
        return reader.parse_instance(instance)

    def get_start_end(self):
        start = 1 # Change start to account for instances that are already covered
        end = len(os.listdir(f'./dataset/{self.data["domain"]}/'))-1
        return start, end

    def add_to_dataset(self, data, instance):
        with open(self.dataset, 'w') as f:
            json.dump(data,f)
            f.write('\n')
        with open(self.completed, 'w') as f:
            f.write(f'{instance}\n')

    """
    1. Get domain and a instance 
    2. Get plan
    3. Get another instance
    4. Get plan
    """
    def prepare_dataset(self):
        domain_name = self.data['domain']
        domain_pddl = f'./instances/{self.data["domain_file"]}'
        instance_folder = f'./dataset/{domain_name}/'
        instance = f'./dataset/{domain_name}/train_{self.data["instances_template"]}'
        n_examples = 1
        start, end = self.get_start_end()

        for start in range(start, end + 2 - n_examples):
            prompt = self.data["domain_intro"]
            for i in range(start, start + n_examples + 1):
                get_plan = False if i == start + self.n_examples else True
                cur_instance = instance.format(i)
                if get_plan and cur_instance in self.completed_list:
                    continue
                if self.verbose:
                    print(f"Instance {cur_instance}")
                # --------------- Read Instance --------------- #
                problem = self.get_problem(cur_instance, domain_pddl)
                # --------------------------------------------- #
                # ------------ Put plan and instance into text ------------ #
                self.compute_plan(domain_pddl, cur_instance)
                INIT, GOAL, PLAN = instance_to_text_blocksworld(problem)
                if get_plan:
                    prompt += self.fill_template(INIT, GOAL, PLAN)
                else:
                    prompt += self.fill_template(INIT, GOAL, "")
                    # Add separator
                    prompt += '\n\n###\n\n'
            completion = " " + PLAN
            self.add_to_dataset({'prompt': prompt, 'completion':completion}, cur_instance)

