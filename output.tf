output "ec2-instance-public-ip" {
  value = aws_instance.app_server.public_ip
}