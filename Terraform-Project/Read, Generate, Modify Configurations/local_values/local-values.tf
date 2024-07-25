variable "tags" {
  type = map
  default = {
    Team = "security-team"
  }
}

locals {
  default = {
    Team = "security-team"
    CreationDate = "date-${formatdate("DDMMYY", timestap())}"
  }
}

resource "aws_security_group" "sg_01" {
    name = "app_firewall"
    tags = {
        Team = local.default
    }
}

resource "aws_security_group" "sg_02" {
    name = "db_firewall"
    tags = {
        Team = local.default
    }
}