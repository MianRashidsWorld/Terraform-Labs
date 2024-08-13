terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.6.1"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  ami = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "My-first-ec2"
  }
}

variable "region" {
  
}

variable "ami" {
  
}

variable "instance_type" {
  
}
