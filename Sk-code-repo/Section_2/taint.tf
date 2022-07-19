
resource "aws_instance" "ec2-sk" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}
