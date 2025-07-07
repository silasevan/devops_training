
variable "subnet_ids" {
  description = "Subnets to mount EFS"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for EFS mount targets"
  type        = string
}
