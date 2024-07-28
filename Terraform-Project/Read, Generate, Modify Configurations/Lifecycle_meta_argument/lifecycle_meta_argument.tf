terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  region     = "eu-north-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-123"
    instance_type = "t3.micro"

    tags = {
      Name = "HelloWorld"
    }
}