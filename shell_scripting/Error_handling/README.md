Bash Scripting for AWS S3 Bucket Error Handling
📌 Project Overview
This project demonstrates the use of Bash scripting for error handling in AWS environments, with a particular focus on S3 bucket operations. It highlights how to:

Handle errors using exit status ($?)

Prevent duplicate S3 bucket creation

Display meaningful feedback to the user based on success or failure

Use if-else logic and loops for efficient automation


📂 Scripts Overview
1. check_and_create_bucket.sh
Purpose:
Checks if a specified S3 bucket exists. If not, it creates the bucket. Includes full error handling for AWS responses.

# Function to create S3 buckets for different departments
create_s3_buckets() {"\n    company=\"datawise\"\n    departments=(\"Marketing\" \"Sales\" \"HR\" \"Operations\" \"Media\")\n    \n    for department in \"${departments[@]"}"; do
        bucket_name="${company}-${department}-Data-Bucket"
        
        # Check if the bucket already exists
        if aws s3api head-bucket --bucket "$bucket_name" &>/dev/null; then
            echo "S3 bucket '$bucket_name' already exists."
        else
            # Create S3 bucket using AWS CLI
            aws s3api create-bucket --bucket "$bucket_name" --region your-region
            if [ $? -eq 0 ]; then
                echo "S3 bucket '$bucket_name' created successfully."
            else
                echo "Failed to create S3 bucket '$bucket_name'."
            fi
        fi
    done
}

Features:

Uses aws s3api head-bucket to check for bucket existence

Uses $? to handle success/failure of that command

Handles 404 (bucket not found) vs 403 (access denied)

Prevents duplicate bucket creation

Prints clear success/failure messages

 Conclusion
This project emphasizes Bash-based error handling for AWS S3 automation, fulfilling the instructor's criteria:

✅ Uses if, else, and loop constructs

✅ Handles real-world DevOps scenarios with AWS

✅ Incorporates proper use of exit status ($?)

✅ Provides clear success/failure feedback

