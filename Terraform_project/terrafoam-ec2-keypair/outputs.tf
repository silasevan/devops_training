output "public_ip" {
  description = "Public IP of the Apache server"
  value       = aws_instance.apache.public_ip
}
