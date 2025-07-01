variable "name" {
  type        = string
  description = "Name of the ECR repository"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply"
}
