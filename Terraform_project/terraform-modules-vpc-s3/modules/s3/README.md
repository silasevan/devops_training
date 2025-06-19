# Terraform S3 Bucket Module (with ACL)

This module creates an AWS S3 bucket with support for:

- Versioning
- Server-side encryption (AES256)
- Access control (ACL)
- Tagging
- Public access block
- Force destroy option

## Usage

```hcl
module "s3_bucket" {
  source = "./terraform-s3-module"

  bucket_name        = "my-secure-bucket-123"
  versioning_enabled = true
  enable_encryption  = true
  force_destroy      = false
  acl                = "private" # e.g. public-read, private, etc.

  tags = {
    Environment = "Production"
    Owner       = "Silas"
  }
}
