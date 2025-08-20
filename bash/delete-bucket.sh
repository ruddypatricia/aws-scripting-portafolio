#!/bin/bash
# Script to delete an S3 bucket
# Usage: ./delete-bucket.sh bucket-name

LOG_FILE="python/log.txt"

if [ -z "$1" ]; then
  echo "Uso: $0 bucket-name"
  exit 1
fi

BUCKET_NAME=$1

echo "Deleting bucket: $BUCKET_NAME ..."

# Eliminar todos los objetos del bucket antes de eliminar el bucket
aws s3 rm s3://$BUCKET_NAME --recursive

# Eliminar el bucket
aws s3 rb s3://$BUCKET_NAME

if [ $? -eq 0 ]; then
  echo "[OK] Bucket '$BUCKET_NAME' deleted successfully."
  echo "$(date): Bucket '$BUCKET_NAME' deleted successfully." >> $LOG_FILE
else
  echo "[ERROR] Error deleting bucket '$BUCKET_NAME'."
  echo "$(date): Error deleting bucket '$BUCKET_NAME'." >> $LOG_FILE
fi
