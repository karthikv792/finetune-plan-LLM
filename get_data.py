import os
import openai
import argparse
import json
from split_dataset import create_dataset
openai.api_key = os.getenv("OPENAI_API_KEY")
for i in openai.FineTune.list()['data']:
    print(i['id'], i['status'])