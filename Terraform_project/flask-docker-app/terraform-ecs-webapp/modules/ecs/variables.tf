variable "cluster_name" {}
variable "task_family" {}
variable "execution_role_arn" {}
variable "container_image" {}
variable "service_name" {}
variable "subnet_ids" {
  type = list(string)
}
variable "security_group_id" {}
