# 🪣 AWS S3 Bucket Project - `siltechdevbucket`

## 📌 Project Overview

This mini-project demonstrates how I created and managed an Amazon S3 bucket named `siltechdevbucket` using the AWS Management Console. The objective was to explore essential features of Amazon S3 such as versioning, bucket policies, lifecycle rules, and object uploads.

---

## 🔧 Steps Taken

### 1. **Created the S3 Bucket**
- Opened the **AWS S3 Console**
- Clicked on **Create bucket**
- Entered the bucket name: `siltechdevbucket`
- Selected preferred AWS region (e.g., `us-east-1`)
- Kept default settings (Block all public access enabled)
- Clicked **Create bucket**
<img src="./img/1.png">
<img src="./img/2.png">


---

### 2. **Enabled Versioning**
- Opened the bucket and clicked on the **Properties** tab
- Scrolled to **Bucket Versioning**
- Clicked **Edit** and enabled **Versioning**
- Saved changes
<img src="./img/6.png">
<img src="./img/7.png">

---

### 3. **Uploaded `hello.txt`**
- Created a simple text file named `hello.txt`
- Opened the bucket and clicked on **Upload**
- Selected the file and uploaded it successfully
<img src="./img/3.png">
<img src="./img/4.png">
<img src="./img/5.png">

---

### 4. **Created Bucket Policy**
- Navigated to the **Permissions** tab of the bucket
- Scrolled to **Bucket Policy**
- Clicked **Edit** and added the following policy to allow public read access to `hello.txt`:
<img src="./img/8.png">
<img src="./img/9.png">
<img src="./img/10.png">
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::siltechdevbucket/hello.txt"
    }
  ]
}

---

----
### 5. Created Lifecycle Policy
Clicked on the Management tab in the bucket

Clicked Create lifecycle rule

Named the rule (e.g., GlacierTransitionRule)

Applied rule to all objects

Added a transition action for non-current versions

Set the rule to transition non-current versions to Glacier after 30 days

<img src="./img/11.png">
<img src="./img/12.png">
<img src="./img/13.png">
<img src="./img/14.png">
<img src="./img/15.png">
<img src="./img/16.png">
<img src="./img/17.png">
<img src="./img/18.png">
<img src="./img/19.png">
---


📘 What I Learned
How to create and configure an S3 bucket using the AWS Management Console

The benefits of Versioning to preserve, retrieve, and restore every version of an object stored in the bucket

How to configure a Bucket Policy to manage access control

How to implement Lifecycle Rules for efficient storage cost management

Improved my familiarity with the AWS S3 service and its management interfaces

project-folder/
├── README.md
├── hello.txt
└── screenshots/
    ├── bucket_created.png
    ├── versioning_enabled.png
    ├── hello_txt_uploaded.png
    ├── bucket_policy.png
    └── lifecycle_policy.png














✅ Conclusion
This mini-project provided hands-on experience with setting up and managing an AWS S3 bucket. It helped me understand the core features of S3 and how they contribute to building secure, scalable, and cost-effective cloud storage solutions.