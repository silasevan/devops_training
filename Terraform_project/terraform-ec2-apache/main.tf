provider "aws" {
  region = "us-east-1" # Change to your preferred AWS region
}

# Create Security Group Module
module "web_sg" {
  source             = "./modules/sg"  # Path to your SG module
  sg_name            = "web-sg"
  vpc_id             = "vpc-0397140a031bfb010"           # Replace with your VPC ID
  allowed_ssh_cidrs  = ["0.0.0.0/0"]
  allowed_http_cidrs = ["0.0.0.0/0"]
  tags = {
    Environment = "dev"
    Project     = "apache-web"
  }
}

# Create EC2 Instance Module
module "web_server" {
  source            = "./modules/ec2"   # Path to your EC2 module
  ami_id            = "ami-05ffe3c48a9991133"     # Replace with valid AMI ID
  instance_type     = "t2.micro"
  key_name          = "Linuxkey2"              # Replace with your key pair
  subnet_id         = "subnet-02b30c9a982df5a81"          # Replace with your subnet ID
  security_group_ids = [module.web_sg.security_group_id]
  instance_name     = "ApacheWebServer"
  tags = {
    Environment = "dev"
    Project     = "apache-web"
  }
}
