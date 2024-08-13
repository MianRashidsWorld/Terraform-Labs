module "ec2" {
  source = "../../Modules/EC2"
  instance_type = "t3.micro"
  ami = "ami-123"
  region = "eu-north-1"
}