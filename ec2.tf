resource "aws_instance" "app_server" {
  ami           = "ami-0c1907b6d738188e5"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}