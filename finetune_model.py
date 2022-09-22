import os
import openai

openai.api_key = os.getenv("OPENAI_API_KEY")

def finetune(training_file, validation_file="", n_epochs=4, model='text-davinci-002'):
    response = openai.FineTune.create(training_file=training_file, validation_file=validation_file,n_epochs=n_epochs,model=model)
    if response:
        id = response['id'] #Use this id for completion
def get_finetune_list():
    print(openai.FineTune.list())