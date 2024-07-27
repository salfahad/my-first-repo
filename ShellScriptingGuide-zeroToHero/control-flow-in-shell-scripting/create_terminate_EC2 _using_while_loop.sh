#!/bin/bash
###Example: Create and Terminate EC2 Instances Using while Loop

AMI_ID="ami-amazon linux 2023 AMI"
INSTANCE_TYPE="t2.micro"
KEY_NAME="my-key-pair"
INSTANCE_ID=$(aws ec2 run-instances --image-id $AMI_ID --instance-type $INSTANCE_TYPE --key-name $KEY_NAME --query "Instances[0].InstanceId" --output text)

echo "Launched instance $INSTANCE_ID. Waiting for 60 seconds..."
sleep 60

aws ec2 terminate-instances --instance-ids $INSTANCE_ID
echo "Terminated instance $INSTANCE_ID."