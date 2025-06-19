terraform {
  backend "s3" {
    bucket         = "demo-app-bucket-123456"   # <-- Use your actual bucket name
    key            = "terraform/state/vpc-s3-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
