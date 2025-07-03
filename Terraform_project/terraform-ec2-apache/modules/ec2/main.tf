resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_group_ids

  user_data              = file("${path.module}/apache_userdata.sh")

  tags = merge(
    {
      Name = var.instance_name
    },
    var.tags
  )
}
