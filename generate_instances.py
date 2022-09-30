import os
import random
import openai
import numpy as np
import yaml
import hashlib
from tarski.io import PDDLReader
from tarski.syntax.formulas import *


class Instance_Generator():
    def __init__(self, config_file):
        self.data = None
        self.read_config(config_file)
        self.instances_template = f"./dataset/{self.data['domain']}/train_{self.data['instances_template']}"

        self.hashset = set()
        os.makedirs(f"./dataset/{self.data['domain']}/", exist_ok=True)


    def read_config(self, config_file):
        with open(config_file, 'r') as file:
            self.data = yaml.safe_load(file)

    def instance_ok(self, domain, instance):
        reader = PDDLReader(raise_on_error=True)
        reader.parse_domain(domain)
        reader.parse_instance(instance)
        if isinstance(reader.problem.goal, Tautology):
            return False
        elif isinstance(reader.problem.goal, Atom):
            if reader.problem.goal in reader.problem.init.as_atoms():
                return False
        else:
            if (all([i in reader.problem.init.as_atoms() for i in reader.problem.goal.subformulas])):
                return False
        return True

    def add_existing_files_to_hash_set(self):
        em = []
        count = 0
        for i in os.listdir(f"./dataset/{self.data['domain']}/"):
            try:
                f = open(f"./dataset/{self.data['domain']}/train_instance-{count}.pddl", "r")
            except:
                em.append(count)
                count+=1
                continue
            pddl = f.read()
            if pddl:
                to_add = self.convert_pddl(pddl)
                self.hashset.add(to_add)
            else:
                em.append(count)
            count+=1


        length = len(self.hashset)
        for i in os.listdir(f"./instances/{self.data['domain']}/"):
            f = open(f"./instances/{self.data['domain']}/{i}", "r")
            pddl = f.read()
            to_add = self.convert_pddl(pddl)
            if to_add in self.hashset:
                print("OOPS")
            self.hashset.add(to_add)
        return length, em

    def convert_pddl(self, pddl):
        init = []
        goal = []
        init_check=False
        goal_check=False
        for i in pddl.split('\n'):
            if 'init' in i:
                init_check = True
                continue
            elif 'goal' in i:
                goal_check=True
                init_check=False
                continue
            to_append = i.replace("(","").replace(")","")
            if to_append and 'and' not in to_append:
                if init_check:
                    init.append(to_append)
                elif goal_check:
                    goal.append(to_append)
        pddl_to_hash = ','.join(sorted(init)+sorted(goal))
        hash_of_instance = hashlib.md5(pddl_to_hash.encode('utf-8')).hexdigest()

        return hash_of_instance


    def gen_goal_directed_instances(self):
        n = self.data['n_instances'] + 2
        n_objs = range(4, len(self.data["encoded_objects"]) + 1)
        CWD = os.getcwd()
        CMD = "./blocksworld 4 {}"
        start, missing = self.add_existing_files_to_hash_set()

        os.chdir("pddlgenerators/blocksworld/")
        instance_file = f"{CWD}/{self.instances_template}"
        domain = f"{CWD}/instances/{self.data['domain_file']}"
        print(missing)
        c = missing.pop() if missing else start
        for obj in n_objs:
            print(f'==================== Number of blocks {obj} ====================')
            count = 0
            cmd_exec = CMD.format(obj)
            while count<50:
                with open(instance_file.format(c), "w+") as fd:
                    pddl = os.popen(cmd_exec).read()
                    hash_of_instance = self.convert_pddl(pddl)
                    # hash_of_instance = hashlib.md5(pddl.encode('utf-8')).hexdigest()
                    if hash_of_instance in self.hashset:
                        # print("[-]: Same instance, skipping...")
                        count+=1
                        continue
                    count=0
                    self.hashset.add(hash_of_instance)
                    fd.write(pddl)

                inst_to_parse = instance_file.format(c)
                if self.instance_ok(domain, inst_to_parse):
                    if missing:
                        c = missing.pop()
                    else:
                        if c<start:
                            c=start
                        else:
                            c += 1
                    # print(f"[+]: Instance created. Total instances: {c}")
                else:
                    # print("[-]: Instance not valid.")
                    self.hashset.remove(hash_of_instance)
                    os.remove(inst_to_parse)
                    continue


        print(f"[+]: A total of {c} instances have been generated")
        os.chdir(CWD)

if __name__ == '__main__':
    config_file = './configs/t1_goal_directed_reasoning.yaml'
    ig = Instance_Generator(config_file)
    ig.gen_goal_directed_instances()