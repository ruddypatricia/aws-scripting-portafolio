import boto3

def list_buckets():
    s3 = boto3.client('s3')
    response = s3.list_buckets()
    
    print("Buckets in my account AWS:")
    for bucket in response['Buckets']:
        print(f" - {bucket['Name']} (creado en {bucket['CreationDate']})")

if __name__ == "__main__":
    list_buckets()
