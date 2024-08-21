resource "aws_eip" "lb" {
    domain = "vpc"
}

output "eip_adress" {
  value = aws_eip.lb.public_ip
}