resource "aws_instance" "app_server" {
  ami           = "ami-00695597b5e6018d3"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.allow_all.id ]

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 3000
    to_port          = 3000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    ingress {
    from_port        = 8000
    to_port          = 8000
    protocol         = "tcp"
    ipv6_cidr_blocks = ["::/0"]

  }

  tags = {
    Name = "allow_all"
  }
}

