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
        for i in os.listdir(f"./dataset/{self.data['domain']}/"):
            f = open(f"./dataset/{self.data['domain']}/{i}", "r")
            pddl = f.read()
            self.hashset.add(hashlib.md5(pddl.encode('utf-8')).hexdigest())
        length = len(self.hashset)
        for i in os.listdir(f"./instances/{self.data['domain']}/"):
            f = open(f"./instances/{self.data['domain']}/{i}", "r")
            pddl = f.read()
            self.hashset.add(hashlib.md5(pddl.encode('utf-8')).hexdigest())
        return length

    def gen_goal_directed_instances(self):
        n = self.data['n_instances'] + 2
        n_objs = range(4, len(self.data["encoded_objects"]) + 1)
        CWD = os.getcwd()
        CMD = "./blocksworld 4 {}"
        start = self.add_existing_files_to_hash_set()

        os.chdir("pddlgenerators/blocksworld/")
        instance_file = f"{CWD}/{self.instances_template}"
        domain = f"{CWD}/instances/{self.data['domain_file']}"
        c = start

        for obj in n_objs:
            print(f'==================== Number of blocks {obj} ====================')
            count = 0
            cmd_exec = CMD.format(obj)
            while count<25:
                with open(instance_file.format(c), "w+") as fd:
                    pddl = os.popen(cmd_exec).read()
                    hash_of_instance = hashlib.md5(pddl.encode('utf-8')).hexdigest()
                    if hash_of_instance in self.hashset:
                        print("[-]: Same instance, skipping...")
                        count+=1
                        continue
                    count=0
                    self.hashset.add(hash_of_instance)
                    fd.write(pddl)

                inst_to_parse = instance_file.format(c)
                if self.instance_ok(domain, inst_to_parse):
                    c += 1
                    print(f"[+]: Instance created. Total instances: {c}")
                else:
                    print("[-]: Instance not valid.")
                    self.hashset.remove(hash_of_instance)
                    os.remove(inst_to_parse)
                    continue


        print(f"[+]: A total of {c} instances have been generated")
        os.chdir(CWD)

if __name__ == '__main__':
    ig = Instance_Generator('./configs/t1_goal_directed_reasoning.yaml')
    ig.gen_goal_directed_instances()