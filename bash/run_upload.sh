#!/bin/bash
LOG_FILE="python/log.txt"

if [ -z "$1" ]; then
  echo "Uso: $0 bucket-name"
  exit 1
fi

BUCKET_NAME=$1
echo "$(date): Starting upload to bucket '$BUCKET_NAME'..." >> $LOG_FILE

# Ejecutar Python con argumento dinámico
python python/upload_files.py $BUCKET_NAME

if [ $? -eq 0 ]; then
    echo "[OK] Upload completed successfully."
    echo "$(date): Upload completed successfully to bucket '$BUCKET_NAME'." >> $LOG_FILE
else
    echo "[ERROR] Error during upload."
    echo "$(date): Error during upload to bucket '$BUCKET_NAME'." >> $LOG_FILE
fi
