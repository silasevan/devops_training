Linux Foundations Project
Project Overview
This project is designed to demonstrate foundational Linux skills as outlined in the curriculum. It covers the following objectives:

Understanding Linux distributions and selecting one for cloud deployment.

Creating and connecting to a cloud-based Linux server (e.g., Ubuntu on AWS EC2).

Managing software packages using the command line.

Exploring and managing shell permissions.

By the end of this project, the learner will be comfortable working in a Linux environment, understand basic administration tasks, and have hands-on experience with real-world server setup and usage.

Table of Contents
Linux Distribution Used

Cloud Server Setup

Connecting to the Server

Package Management

Conclusion

Linux Distribution Used
For this project, Ubuntu Server 22.04 LTS was chosen due to its popularity, community support, and compatibility with many cloud platforms.

Cloud Server Setup
Platform Used: AWS (Amazon Web Services)

Steps to Create the Server:

Signed up for an AWS account.

Navigated to the EC2 Dashboard and launched an instance.
<img src="./img/ec2 aws console.png">

Selected Ubuntu Server 22.04 LTS as the AMI.
Chose a t2.micro instance (Free Tier eligible).
<img src="./img/creating a linux server.png">
Created a new key pair (linux_project_key.pem) for SSH access.
<img src="./img/creating a pair key.png">
Configured security group to allow SSH (port 22).
<img src="./img/using default security.png">
Launched the instance.
<img src="./img/Linux server created.png">
Connecting to the Server
After launching the EC2 instance, I connected using SSH from my local terminal:
<img src="./img/connected tp ec2 linux server.png">
bash
Copy
Edit
chmod 400 linux_project_key.pem
ssh -i linux_project_key.pem ubuntu@<EC2_PUBLIC_IP>
Upon successful login, I was in the shell of my Ubuntu server.
<img src="./img/connected tp ec2 linux server.png">
Package Management
Updating the Package List
<img src="./img/update package manager.png">
sudo apt update
Upgrading Installed Packages
sudo apt upgrade -y
Installing a tree
Edit
sudo apt install tree
Removing a Package
<img src="./img/unistalling tree.png">

sudo apt remove tree


### Conclusion
This project demonstrated my understanding of:

Linux distributions and how to choose a suitable one.

Creating and connecting to a cloud-based Linux server.

Managing packages using apt.

