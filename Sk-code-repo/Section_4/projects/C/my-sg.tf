module "sgmodule" {
    source = "../../modules/sg-output"
}

resource "aws_instance" "web" {
    ami = "ami-08df646e18b182346"
    instance_type = "t2.micro"
    vpc_security_group_ids = [module.sgmodule.sg_id]
}