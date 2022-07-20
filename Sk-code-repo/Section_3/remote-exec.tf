/*
resource "aws_instance" "myec2" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
  key_name      = "terraform-key"

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("./terraform-key.pem")
  }

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]
  }
}
*/