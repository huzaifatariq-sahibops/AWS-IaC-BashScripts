#!/bin/bash

INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0731becbf832f281e"
KEY_NAME="my_private_key"
SECURITY_GROUP_ID="sg-0115758fbc5819a09"
INSTANCE_NAME="HuzaifaTariqs-Instance"

aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_ID \
  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
  >/dev/null 2>&1

echo "✅ EC2 instance '$INSTANCE_NAME' launched successfully."
