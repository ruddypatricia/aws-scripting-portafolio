import boto3

# Create S3 client
s3 = boto3.client('s3')

# List all buckets
buckets = s3.list_buckets()

print("Buckets in your AWS account:")
for bucket in buckets['Buckets']:
    print(f" - {bucket['Name']}")
    # List objects inside the bucket
    objects = s3.list_objects_v2(Bucket=bucket['Name'])
    if 'Contents' in objects:
        for obj in objects['Contents']:
            print(f"    -> {obj['Key']}")
    else:
        print("    -> (empty)")
