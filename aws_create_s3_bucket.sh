#!/bin/bash

# Define variables
BUCKET_NAME="my_s3_bucket-$(date +%s)"
REGION="us-east-1"

# Create S3 bucket
aws s3api create-bucket \
  --bucket "$BUCKET_NAME" \
  --region "$REGION"
