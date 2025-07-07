
variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "EC2 Key pair name"
  type        = string
}

variable "user_data" {
  description = "Startup script for EC2"
  type        = string
}

variable "public_subnet_ids" {
  description = "Public subnets for load balancer"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "Private subnets for EC2 instances"
  type        = list(string)
}

variable "launch_template_sg" {
  description = "Security group for EC2 instances and ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for target group"
  type        = string
}
