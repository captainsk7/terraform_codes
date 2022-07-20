/*
resource "aws_instance" "myec3" {
  ami = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec3.private_ip} >> private_ips.txt"
  }
}
*/