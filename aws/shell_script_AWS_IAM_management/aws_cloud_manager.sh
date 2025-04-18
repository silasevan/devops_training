#!/bin/bash

# aws_cloud_manager.sh
# Script to create IAM users, group, attach policy, and assign users to the group.

# Define IAM user names
IAM_USERS=("Eric" "Jack")

# Define group name
GROUP_NAME="AdminGroup"

# Create IAM users
echo "Creating IAM users..."
for USER in "${IAM_USERS[@]}"
  do
    aws iam create-user --user-name "$USER" >/dev/null 2>&1
    if [ $? -eq 0 ]; then
      echo "User '$USER' created successfully."
    else
      echo "User '$USER' may already exist or an error occurred."
    fi
  done

# Create IAM group
echo "Creating IAM group '$GROUP_NAME'..."
aws iam create-group --group-name "$GROUP_NAME" >/dev/null 2>&1
if [ $? -eq 0 ]; then
  echo "Group '$GROUP_NAME' created successfully."
else
  echo "Group '$GROUP_NAME' may already exist or an error occurred."
fi

# Attach AdministratorAccess policy to the group
echo "Attaching AdministratorAccess policy to '$GROUP_NAME'..."
aws iam attach-group-policy --group-name "$GROUP_NAME" \
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
if [ $? -eq 0 ]; then
  echo "Policy attached successfully."
else
  echo "Failed to attach policy."
fi

# Add users to the group
echo "Adding users to group '$GROUP_NAME'..."
for USER in "${IAM_USERS[@]}"
  do
    aws iam add-user-to-group --user-name "$USER" --group-name "$GROUP_NAME"
    if [ $? -eq 0 ]; then
      echo "User '$USER' added to group '$GROUP_NAME'."
    else
      echo "Failed to add user '$USER' to group."
    fi
  done

echo "IAM setup completed."