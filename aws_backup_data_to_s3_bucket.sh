#!/bin/bash

SOURCE_DIR="/home/user/documents"
BACKUP_DIR="/backup"
S3_BUCKET="s3://backup_s3_bucket"

mkdir -p $BACKUP_DIR
cp -r $SOURCE_DIR $BACKUP_DIR
aws s3 sync $BACKUP_DIR $S3_BUCKET

echo "✅ Backup completed successfully."
