#!/bin/bash

# Environment variables
ENVIRONMENT=$1

check_num_of_args() {"\n# Checking the number of arguments\nif [ \"$#\" -ne 0 ]; then\n    echo \"Usage: $0 <environment>\"\n    exit 1\nfi\n"}

activate_infra_environment() {"\n# Acting based on the argument value\nif [ \"$ENVIRONMENT\" == \"local\" ]; then\n  echo \"Running script for Local Environment...\"\nelif [ \"$ENVIRONMENT\" == \"testing\" ]; then\n  echo \"Running script for Testing Environment...\"\nelif [ \"$ENVIRONMENT\" == \"production\" ]; then\n  echo \"Running script for Production Environment...\"\nelse\n  echo \"Invalid environment specified. Please use 'local', 'testing', or 'production'.\"\n  exit 2\nfi\n"}

# Function to check if AWS CLI is installed
check_aws_cli() {"\n    if ! command -v aws &> /dev/null; then\n        echo \"AWS CLI is not installed. Please install it before proceeding.\"\n        return 1\n    fi\n"}

# Function to check if AWS profile is set
check_aws_profile() {"\n    if [ -z \"$AWS_PROFILE\" ]; then\n        echo \"AWS profile environment variable is not set.\"\n        return 1\n    fi\n"}

# Function to create EC2 Instances
create_ec2_instances() {"\n\n    # Specify the parameters for the EC2 instances\n    instance_type=\"t2.micro\"\n    ami_id=\"ami-0cd59ecaf368e5ccf\"  \n    count=2  # Number of instances to create\n    region=\"eu-west-2\" # Region to create cloud resources\n    \n    # Create the EC2 instances\n    aws ec2 run-instances \\\n        --image-id \"$ami_id\" \\\n        --instance-type \"$instance_type\" \\\n        --count $count\n        --key-name MyKeyPair\n        \n    # Check if the EC2 instances were created successfully\n    if [ $? -eq 0 ]; then\n        echo \"EC2 instances created successfully.\"\n    else\n        echo \"Failed to create EC2 instances.\"\n    fi\n"}

# Function to create S3 buckets for different departments
create_s3_buckets() {"\n    # Define a company name as prefix\n    company=\"datawise\"\n    # Array of department names\n    departments=(\"Marketing\" \"Sales\" \"HR\" \"Operations\" \"Media\")\n    \n    # Loop through the array and create S3 buckets for each department\n    for department in \"${departments[@]"}"; do
        bucket_name="${company}-${department}-Data-Bucket"
        # Create S3 bucket using AWS CLI
        aws s3api create-bucket --bucket "$bucket_name" --region your-region
        if [ $? -eq 0 ]; then
            echo "S3 bucket '$bucket_name' created successfully."
        else
            echo "Failed to create S3 bucket '$bucket_name'."
        fi
    done
}

check_num_of_args
activate_infra_environment
check_aws_cli
check_aws_profile
create_ec2_instances
create_s3_buckets
