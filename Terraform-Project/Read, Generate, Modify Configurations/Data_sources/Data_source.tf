locals {
  small_image = "t3.micro"
}

data "aws_ami" "myimage" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Ubuntu_20.04-x86_64-SQL_2022_Standard-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.image_id
  instance_type = local.small_image
}