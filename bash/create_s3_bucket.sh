#!/bin/bash
# Script to create an S3 bucket
# Usage: ./create_s3_bucket.sh bucket-name

if [ -z "$1" ]; then
  echo "Uso: $0 bucket-test"
  exit 1
fi

BUCKET_NAME=$1

echo "creating bucket: $BUCKET_NAME ..."
aws s3 mb s3://$BUCKET_NAME

if [ $? -eq 0 ]; then
  echo "✅ Bucket created successfully."
else
  echo "❌ Error creating bucket."
fi
