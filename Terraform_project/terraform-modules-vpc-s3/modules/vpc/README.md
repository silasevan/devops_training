# Terraform VPC Module

This Terraform module creates a customizable VPC setup including:

- VPC
- Internet Gateway
- Public and Private Subnets

## Usage

```hcl
module "vpc" {
  source               = "./terraform-vpc-module"
  name_prefix          = "prod"
  vpc_cidr             = "10.1.0.0/16"
  public_subnet_cidrs  = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnet_cidrs = ["10.1.101.0/24", "10.1.102.0/24"]
  availability_zones   = ["us-west-2a", "us-west-2b"]

  tags = {
    Environment = "Production"
    Project     = "MyApp"
  }
}
