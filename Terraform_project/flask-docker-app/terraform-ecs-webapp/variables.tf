variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDRs for public subnets"
}

variable "azs" {
  type        = list(string)
  description = "List of availability zones for public subnets"
}
