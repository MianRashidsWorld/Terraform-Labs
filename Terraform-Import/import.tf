provider "aws" {
  region = "eu-north-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-027d6d3a1aae11989"
}