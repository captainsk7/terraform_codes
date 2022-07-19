
resource "aws_instance" "myinstance" {
  ami           = "ami-08df646e18b182346"
  instance_type = "t2.micro"
  count         = 3
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalancer", "prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = 3
  path = "/system/"
}
