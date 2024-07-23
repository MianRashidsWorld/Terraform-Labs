terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region     = "eu-north-1"
}


resource "aws_iam_user" "demouser" {
  name = "Kplabs-demo-user"
}

