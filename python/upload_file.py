import boto3

s3 = boto3.client('s3')
s3.upload_file('python/prueba2.txt', 'rudyola-bucket', 'prueba2.txt')
print("File uploaded successfully")