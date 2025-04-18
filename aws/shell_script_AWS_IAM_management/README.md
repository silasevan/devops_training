# Script: `aws_cloud_manager.sh`

This Bash script automates the process of creating IAM users, a group, assigning an AWS-managed policy to the group, and adding users to the group.

## Purpose

To streamline IAM setup for a team by:
- Creating multiple IAM users.
- Creating a user group.
- Attaching the **AdministratorAccess** policy to the group.
- Adding users to the group to inherit the policy.

## What the Script Does

1. **Defines IAM Usernames**:
   - Stores them in an array called `IAM_USERS`.

2. **Creates IAM Users**:
   - Iterates through the array and creates each user using AWS CLI.

3. **Creates an IAM Group**:
   - A group named `AdminGroup` is created.

4. **Attaches Policy to the Group**:
   - The AWS-managed `AdministratorAccess` policy is attached to the group.

5. **Adds Users to the Group**:
   - Each user from the array is added to the group.

## How to Use

1. Save the script as `aws_cloud_manager.sh`.
2. Make it executable:
   ```bash
   chmod +x aws_cloud_manager.sh
   ```
3. Run the script:
   ```bash
   ./aws_cloud_manager.sh
   ```

**Note**: Ensure the AWS CLI is installed and properly configured with the necessary permissions to perform IAM operations.

