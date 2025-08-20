# 🌩️ AWS & Scripting Portfolio

This repository contains practical examples of my skills in **AWS Cloud Practitioner**, **Python**, and **Bash scripting**.  
It showcases automation of cloud resources and basic AWS service administration through real scripts.

---

## 🛠 Technologies
- **AWS Services**: EC2, S3, IAM
- **Python**: boto3 for automation
- **Bash**: administration with the AWS CLI
- **Logging**: persistent log file for Python scripts (`python/log.txt`)

---

## 📂 Repository Structure
- `python/` → Python scripts using **boto3**
  - `create_bucket.py` → create a new S3 bucket
  - `upload_files.py` → upload files to a bucket
  - `list_buckets.py` → list all buckets and their objects
  - `delete_object.py` → delete a specific object from a bucket
  - `delete_bucket.py` → delete an entire bucket
  - `log.txt` → execution log (all Python scripts append actions here)

- `bash/` → Bash scripts using the **AWS CLI**
  - `create_bucket.sh` → create a new S3 bucket
  - `list_buckets.sh` → list all S3 buckets
  - `upload_files.sh` → upload files to a bucket
  - `delete_object.sh` → delete an object from a bucket
  - `delete_bucket.sh` → delete a bucket

---

## 🚀 Examples Included

### Python (with boto3)
1. **Create S3 Bucket**
2. **Upload Files to S3**
3. **List Buckets and Contents**
4. **Delete Object**
5. **Delete Bucket**  
👉 All actions are logged in `python/log.txt`

### Bash (with AWS CLI)
1. **Create S3 Bucket**
2. **List Buckets**
3. **Upload Files**
4. **Delete Object**
5. **Delete Bucket**

---

## ⚡ Execution

### Python

pip install boto3
python python/list_buckets.py

## Make sure of configure aws with: aws configure

## Usage Example

# Create bucket
bash bash/create_bucket.sh my-new-bucket

# Upload file
bash bash/upload_file.sh my-bucket file.txt

# Delete file
bash bash/delete_object.sh my-bucket file.txt

# Delete bucket
bash bash/delete_bucket.sh my-new-bucket