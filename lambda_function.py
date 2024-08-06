import boto3
import os
import json

region = 'us-west-1'
instances = json.loads(os.environ['instancia_id'])
ec2 = boto3.client('ec2', region_name=region)

def lambda_handler(event, context): 
    ec2.start_instances(InstanceIds=instances)
    print('started your instances: ' + str(instances))