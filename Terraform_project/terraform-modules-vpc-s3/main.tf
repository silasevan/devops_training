provider "aws" {
  region = "us-east-1"
}

# VPC Module Usage
module "vpc" {
  source               = "./modules/vpc"
  name_prefix          = "demo"
  vpc_cidr             = "10.20.0.0/16"
  public_subnet_cidrs  = ["10.20.1.0/24", "10.20.2.0/24"]
  private_subnet_cidrs = ["10.20.101.0/24", "10.20.102.0/24"]
  availability_zones   = ["us-east-1a", "us-east-1b"]

  tags = {
    Project     = "VPC-S3-Demo"
    Environment = "Dev"
  }
}

# S3 Module Usage
module "s3_bucket" {
  source             = "./modules/s3"
  bucket_name        = "demo-app-bucket-123456"
  versioning_enabled = true
  enable_encryption  = true
  force_destroy      = false
  acl                = "private"

  tags = {
    Project     = "VPC-S3-Demo"
    Environment = "Dev"
  }
}
