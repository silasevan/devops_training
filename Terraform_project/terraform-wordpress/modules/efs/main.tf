
resource "aws_efs_file_system" "this" {
  creation_token = "wordpress-efs"

  tags = {
    Name = "wordpress-efs"
  }
}

resource "aws_efs_mount_target" "this" {
  count = length(var.subnet_ids)

  file_system_id  = aws_efs_file_system.this.id
  subnet_id       = var.subnet_ids[count.index]
  security_groups = [var.security_group_id]
}


output "efs_id" {
  value = aws_efs_file_system.this.id
}