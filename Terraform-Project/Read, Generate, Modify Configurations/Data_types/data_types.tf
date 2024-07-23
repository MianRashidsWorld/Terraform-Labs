variable "username" {
    type = number /*will restrict the value to only be a number*/
}

resource "aws_iam_user" "lb" {
  name = var.username
}