import os
import openai
import argparse
import json
from split_dataset import create_dataset
openai.api_key = os.getenv("OPENAI_API_KEY")

def finetune(training_file, validation_file="", n_epochs=4, model='davinci'):
    response = openai.FineTune.create(training_file=training_file, validation_file=validation_file,n_epochs=n_epochs,model=model)
    if response:
        id = response['id'] #Use this id for completion
        with open(f'finetune_{id}.json', 'w') as f:
            json.dump(response, f)
def get_finetune_list():
    print(openai.FineTune.list())
def upload_file(file):
    response = openai.File.create(
        file=open(file),
        purpose='fine-tune'
    )
    if response:
        return response["id"]
    else:
        raise('Error in file upload')
if __name__=='__main__':
   parser = argparse.ArgumentParser(description='Finetune with number of samples')
   parser.add_argument('num',type=int,help='# of samples')

   args = parser.parse_args()
   num_samples = args.num
   DIR = create_dataset(num_samples)
   train_file = f'{DIR}dataset_train_{num_samples}.jsonl'
   validation_file = f'{DIR}dataset_test_{num_samples}.jsonl'
   assert os.path.exists(train_file)
   assert os.path.exists(validation_file)
   train_id = upload_file(train_file)
   valid_id = upload_file(validation_file)
   finetune(training_file=train_id, validation_file=valid_id)
   get_finetune_list()
