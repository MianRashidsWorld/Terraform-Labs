resource "aws_instance" "myec2_1" { /*Fetch value from a list*/
  ami = "ami-123"
  instance_type = var.list[0]
}

resource "aws_instance" "myec2_2" { /*Fetch value from a map*/
  ami = "ami-123"
  instance_type = var.types["ap-south-1"]
}

variable "list" {
  type = list 
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}