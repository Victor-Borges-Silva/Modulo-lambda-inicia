import boto3
region = 'us-west-1'
instances = ['i-0fd5ae5df8da7d9aa']
ec2 = boto3.client('ec2', region_name=region)
def lambda_handler(event, context): ec2.start_instances(InstanceIds=instances)
print('started your instances: ' + str(instances))
