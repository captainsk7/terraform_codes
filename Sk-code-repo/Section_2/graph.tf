
resource "aws_instance" "ec2-1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  instance = aws_instance.ec2-1.id
  vpc      = true
}

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"


  ingress {
    description = "TLS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.private_ip}/32"]
  }
}
