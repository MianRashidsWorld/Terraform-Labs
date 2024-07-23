terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "variablesEC2" {
  ami = var.ami
  instance_type = "t2.micro"
}
