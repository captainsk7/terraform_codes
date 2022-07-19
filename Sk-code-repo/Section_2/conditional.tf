
variable "istest" {}

resource "aws_instance" "dev" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.large"
  count = var.istest == false ? 1 : 0
}
