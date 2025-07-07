# Inside ./variables.tf
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for first public subnet"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for second public subnet"
  type        = string
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for first private subnet"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for second private subnet"
  type        = string
}

variable "availability_zone_1" {
  description = "First AZ"
  type        = string
}

variable "availability_zone_2" {
  description = "Second AZ"
  type        = string
}

variable "db_name" {
  description = "Database name for WordPress"
  type        = string
}

variable "db_username" {
  description = "Database username"
  type        = string
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH"
  type        = string
}
