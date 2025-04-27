output "ec2-instance-public-ip" {
  value = aws_instance.app_server.public_ip
}

output "security-group-id" {
  value = aws_security_group.allow_all.id
}