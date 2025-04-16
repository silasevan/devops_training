# AWS Access Management Mini Project

This mini project demonstrates basic Identity and Access Management (IAM) tasks in AWS, including creating IAM users, groups, and custom policies to control access to AWS services such as EC2 and S3.

## Objectives

The main goals of this project were to:

- Create and assign custom IAM policies.
- Manage IAM users and user groups.
- Control access to AWS services using group-based permissions.

## What Was Done

### 1. Created a Custom IAM Policy for EC2 Access
- A custom IAM policy named `policy_for_eric` was created.
- This policy grants **full access to EC2 services**.
- It was defined using JSON policy structure and attached to a specific IAM user.

### 2. Created IAM User: Eric
- An IAM user named **Eric** was created.
- The `policy_for_eric` was attached directly to this user.
- As a result, Eric now has **full access to manage EC2 instances**.

### 3. Created IAM User Group: development_team
- A user group named **development_team** was created.
- This group was granted permissions to:
  - Access and manage **S3 buckets**.
  - Access and manage **EC2 instances**.
- Permissions were added by attaching relevant managed policies or custom policies to the group.

### 4. Created IAM User: Jack
- A new IAM user named **Jack** was created.
- Jack was added to the **development_team** user group.
- Jack automatically inherits the group's permissions and now has access to both **S3** and **EC2**.

## Summary

| User | Access Level | Permissions Source |
|------|--------------|--------------------|
| Eric | Full EC2 access | Direct policy (`policy_for_eric`) |
| Jack | S3 and EC2 access | Inherited via `development_team` group |

## Additional Notes

- IAM best practices recommend using **group-based access control** for easier management and scalability.
- Direct user-level policy assignment (as done with Eric) should be used sparingly and only when necessary