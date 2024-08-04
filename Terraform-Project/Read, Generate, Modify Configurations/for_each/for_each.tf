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

resource "aws_iam_user" "iam"{
    for_each = toset(["user-01", "user-02", "user-03"])
    name = each.key
}