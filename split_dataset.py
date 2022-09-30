import json
import os
dataset = 'dataset1.jsonl'
total_list = []
with open(dataset, 'r') as f:
    lines = f.readlines()
    for line in lines:
        total_list.append(json.loads(line))

def create_dataset(num):
    DIR = f'./dataset/samples_{num}/'
    os.makedirs(DIR, exist_ok=True)
    train=int(num*0.8)
    test=num - train
    print(train,test)
    with open(f'{DIR}dataset_train_{num}.jsonl','a') as f:
        for i in total_list[:train]:
            json.dump(i,f)
            f.write('\n')
    with open(f'{DIR}dataset_test_{num}.jsonl','a') as f:
        for i in total_list[:test]:
            json.dump(i,f)
            f.write('\n')
    return DIR
