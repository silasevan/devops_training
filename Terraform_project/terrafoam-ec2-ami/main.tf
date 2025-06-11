provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 20.04 AMI in us-east-1
  instance_type = "t2.micro"
  key_name      = "Linuxkey2"         # Replace with your actual key name

  tags = {
    Name = "MyTerraformEC2"
  }
}
