# AWS EC2 & S3 Automation Script

This project provides a Bash script (`setup_aws.sh`) that automates the creation of:

- An EC2 instance
- An S3 bucket

It demonstrates essential shell scripting concepts including **functions**, **arrays**, **error handling**, **command-line arguments**, and **environment variables**.

---

## 💠 Script Requirements & Explanation

### 1. ✅ Functions
The script uses **functions** to modularize tasks, improving readability and reusability:

- `create_key_pair`: Generates a new EC2 key pair and saves it locally.
- `create_security_group`: Creates a security group and applies common port access rules.
- `launch_ec2`: Launches an EC2 instance using the previously created key pair and security group.
- `create_s3_bucket`: Creates a new S3 bucket in the specified region.

### 2. ✅ Arrays
An **array** is used to manage multiple security group port rules cleanly:

```bash
PORTS=(22 80 443)
```

This allows the script to loop through these ports and set ingress rules dynamically.

### 3. ✅ Error Handling
Robust **error handling** is implemented to make the script fail-safe:

```bash
set -euo pipefail
trap 'echo "Error occurred at line $LINENO"; exit 1' ERR
```

- `-e`: Exit on error
- `-u`: Exit on unset variable
- `-o pipefail`: Catch errors in piped commands
- `trap`: Provides information about where the error occurred

### 4. ✅ Command-Line Arguments
The script expects **3 command-line arguments**:

1. EC2 Instance Name
2. AMI ID
3. S3 Bucket Name

Usage example:

```bash
./setup_aws.sh my-server ami-0abcdef1234567890 my-bucket-2025
```

If not provided, the script prints a usage message and exits.

### 5. ✅ Environment Variables
The script leverages **environment variables** for flexibility:

- `AWS_REGION`: Specifies the AWS region (defaults to `us-east-1`)
- `AWS_PROFILE`: Specifies the AWS CLI profile (defaults to `default`)

Example usage with environment variables:

```bash
export AWS_REGION=us-west-2
export AWS_PROFILE=my-profile
./setup_aws.sh my-server ami-0abcdef1234567890 my-bucket-2025
```

---

## ⚙️ Prerequisites

- AWS CLI installed and configured
- IAM user with permissions to create EC2, S3, and related resources
- Valid AMI ID for your desired AWS region

---

## 📂 Files

| File Name      | Description                           |
|----------------|---------------------------------------|
| `setup_aws.sh` | Bash script for EC2 & S3 provisioning |
| `README.md`    | Script explanation and usage guide    |

---

## ✅ Example Execution

```bash
chmod +x setup_aws.sh
./setup_aws.sh dev-server ami-0123456789abcdef my-dev-bucket-2025
```

---

## 📌 Notes

- Make sure your S3 bucket name is globally unique.
- The script creates a key pair and saves the `.pem` file locally. Keep it secure!
- You can customize the instance type, security rules, and tags in the script.

---

## 📧 Author

**Ivang Silas Onda**

For inquiries or contributions, feel free to reach out or submit a pull request.

