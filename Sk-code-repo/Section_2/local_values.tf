
locals {
  tags = {
    owner = "Captain_SK"
    service = "backend"
  }
}

resource "aws_instance" "app-dev" {
  ami = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  tags = local.tags
}

resource "aws_instance" "db-dev" {
  ami = "ami-08df646e18b182346"
  instance_type = "t2.small"
  tags = local.tags
}
