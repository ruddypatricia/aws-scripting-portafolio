#!/bin/bash
# Script to create an S3 bucket
# Usage: ./create_s3_bucket.sh bucket-name

LOG_FILE="python/log.txt"

if [ -z "$1" ]; then
  echo "Uso: $0 bucket-name"
  exit 1
fi

BUCKET_NAME=$1

echo "Creating bucket: $BUCKET_NAME ..."
aws s3 mb s3://$BUCKET_NAME

if [ $? -eq 0 ]; then
  echo "[OK] Bucket '$BUCKET_NAME' created successfully."
  echo "$(date): Bucket '$BUCKET_NAME' created successfully." >> $LOG_FILE
else
  echo "[ERROR] Error creating bucket '$BUCKET_NAME'."
  echo "$(date): Error creating bucket '$BUCKET_NAME'." >> $LOG_FILE
fi
