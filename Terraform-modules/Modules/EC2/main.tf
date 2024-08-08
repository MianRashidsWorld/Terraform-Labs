terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.6.1"
    }
  }
}

resource "aws_instance" "myec2" {
  ami = "ami-0249211c9916306f8"
  instance_type = "t3.micro"

  tags = {
    Name = "My-first-ec2"
  }
}

