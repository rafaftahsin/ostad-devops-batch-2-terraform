resource "aws_instance" "app_server" {
  ami           = "ami-00695597b5e6018d3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-e17dff87" ]

  tags = {
    Name = "ExampleAppServerInstance"
  }
}