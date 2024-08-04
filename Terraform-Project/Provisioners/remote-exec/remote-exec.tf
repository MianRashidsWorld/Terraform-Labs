
resource "aws_instance" "web" {
  ami           = "ami-0b2777f4fd0d1712a"
  instance_type = "t3.micro"
  key_name = "ec2-key.pem"
  vpc_security_group_ids = ["sg-123"]

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./ec2-key.pem") //Need a keypair that can be used to connect to EC2 instance. Key created manually
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}
