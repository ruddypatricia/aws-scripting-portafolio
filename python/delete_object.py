import boto3
import argparse
from datetime import datetime

# Configurar argumentos
parser = argparse.ArgumentParser(description="Deleting an object from an S3 bucket")
parser.add_argument("bucket_name", help="Bucket name")
parser.add_argument("object_name", help="Name of the file to delete")
args = parser.parse_args()

bucket_name = args.bucket_name
object_name = args.object_name
log_file = 'python/log.txt'

s3 = boto3.client('s3')

try:
    s3.delete_object(Bucket=bucket_name, Key=object_name)
    print(f"[OK] Object '{object_name}' deleted from bucket '{bucket_name}'.")
    with open(log_file, 'a', encoding='utf-8') as log:
        log.write(f"{datetime.now()}: Object '{object_name}' deleted from bucket '{bucket_name}'.\n")
except Exception as e:
    print(f"[ERROR] Error deleting object: {e}")
    with open(log_file, 'a', encoding='utf-8') as log:
        log.write(f"{datetime.now()}: Error deleting object '{object_name}' from bucket '{bucket_name}': {e}\n")