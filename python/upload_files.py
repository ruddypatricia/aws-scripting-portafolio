import boto3
import os
import argparse
from datetime import datetime

# Configurar argumentos
parser = argparse.ArgumentParser(description="Upload files to an S3 bucket")
parser.add_argument("bucket_name", help="Name of the bucket where the files are uploaded")
parser.add_argument("--folder", default="files_to_upload", help="Folder with files to upload")
args = parser.parse_args()

bucket_name = args.bucket_name
folder_to_upload = args.folder
log_file = 'python/log.txt'

s3 = boto3.client('s3')

# Subir todos los archivos de la carpeta
for filename in os.listdir(folder_to_upload):
    local_path = os.path.join(folder_to_upload, filename)
    s3.upload_file(local_path, bucket_name, filename)
    with open(log_file, 'a') as log:
        log.write(f"{datetime.now()}: File '{filename}' uploaded to bucket '{bucket_name}'\n")
    print(f"File '{filename}' uploaded succesfuly.")
