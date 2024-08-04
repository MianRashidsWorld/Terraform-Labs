resource "aws_instance" "myec2" {
    ami = "ami-0b2777f4fd0d1712a"
    instance_type = "t3.micro"

    //Provisioners must be implemented inside the block
    provisioner "local-exec" {
      command = "echo ${self.public_ip} >> server_ip.txt"
    }
}