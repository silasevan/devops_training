output "private_subnet_ids" {
  value = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]
}

output "public_subnet_ids" {
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_sg_id" {
  value = aws_security_group.ec2.id
}

output "rds_sg_id" {
  value = aws_security_group.rds.id
}
