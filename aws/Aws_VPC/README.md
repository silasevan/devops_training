# AWS VPC Mini Project

## Project Title
**AWS VPC Setup and VPC Peering Configuration**

## Project Description
This mini project demonstrates the creation and configuration of Virtual Private Clouds (VPCs) in AWS, along with essential networking components and VPC peering. The setup involves creating a custom VPC, subnet, and route table, and establishing a secure and functional communication link between two VPCs using VPC peering (Requester and Accepter).

## Objectives
- Create a custom VPC
- Create a subnet within the VPC
- Create and associate a route table
- Set up VPC peering between two VPCs (Requester and Accepter)
- Modify route tables to allow traffic between VPCs

---

## Project Steps

### 1. Create a VPC
- Navigate to **VPC Dashboard** in the AWS Management Console
- Click on **Create VPC**
- Configure the following:
  - **Name tag**: `RequesterVPC` or `AccepterVPC`
  - **IPv4 CIDR block**: e.g., `10.0.0.0/16`
  - Select **default tenancy**
- Click **Create VPC**

### 2. Create a Subnet
- Under **Subnets**, click **Create subnet**
- Select the VPC you created
- Provide:
  - **Name tag**: e.g., `RequesterSubnet`
  - **Availability Zone**: any preferred AZ
  - **IPv4 CIDR block**: e.g., `10.0.1.0/24`
- Click **Create subnet**

### 3. Create a Route Table
- Go to **Route Tables** in the VPC dashboard
- Click **Create route table**
- Configure:
  - **Name tag**: e.g., `RequesterRouteTable`
  - **VPC**: select the previously created VPC
- Click **Create**
- Associate the route table with the subnet

### 4. Set Up VPC Peering
- Go to **Peering Connections**
- Click **Create peering connection**
- Configure:
  - **Name tag**: e.g., `Requester-to-Accepter`
  - **VPC (Requester)**: select the requester's VPC
  - **VPC (Accepter)**: select the accepter’s VPC (can be same or another AWS account)
- Click **Create Peering Connection**
- Select the connection and click **Actions > Accept request**

### 5. Update Route Tables
- Edit the route tables of both VPCs
- Add a new route to direct traffic to the other VPC via the peering connection
  - **Destination**: CIDR of the other VPC
  - **Target**: VPC Peering Connection ID

---

## Outcome
At the end of this project:
- You will have two VPCs with successful VPC peering
- Each VPC can communicate with the other via its private IPs
- Proper subnets and route tables are configured to allow traffic flow

---

## Screenshots

### VPC Creation
![VPC Creation](screenshots/1.png)
![VPC Creation](screenshots/2.png)
![VPC Creation](screenshots/3.png)
![VPC Creation](screenshots/4.png)
![VPC Creation](screenshots/5.png)
![VPC Creation](screenshots/6.png)
![VPC Creation](screenshots/7.png)
![VPC Creation](screenshots/8.png)
![VPC Creation](screenshots/9.png)
![VPC Creation](screenshots/10.png)
![VPC Creation](screenshots/11.png)
![VPC Creation](screenshots/12.png)
![VPC Creation](screenshots/13.png)
![VPC Creation](screenshots/14.png)
![VPC Creation](screenshots/15.png)
![VPC Creation](screenshots/16.png)
![VPC Creation](screenshots/17.png)
![VPC Creation](screenshots/18.png)
![VPC Creation](screenshots/19.png)
![VPC Creation](screenshots/20.png)
![VPC Creation](screenshots/21.png)
![VPC Creation](screenshots/22.png)
![VPC Creation](screenshots/23.png)
![VPC Creation](screenshots/24.png)
![VPC Creation](screenshots/25.png)
![VPC Creation](screenshots/26.png)
![VPC Creation](screenshots/27.png)
![VPC Creation](screenshots/28.png)
![VPC Creation](screenshots/29.png)
![VPC Creation](screenshots/30.png)
![VPC Creation](screenshots/31.png)



### Subnet Creation
![Subnet Creation](screenshots/subnet-creation.png)

### Route Table Association
![Route Table](screenshots/route-table.png)

### VPC Peering Request
![VPC Peering Request](screenshots/vpc-peering-request.png)

### VPC Peering Acceptance
![VPC Peering Acceptance](screenshots/vpc-peering-acceptance.png)

### Updated Route Table for Peering
![Route Update](screenshots/route-update.png)

---

## Author
**Ivang Silas Onda**

---

## License
This project is for educational purposes only.
