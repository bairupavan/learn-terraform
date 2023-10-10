data "aws_ami" "ami_id" {
  owners = ["973714476881"]
  name_regex = "Centos-8-DevOps-Practice"
  most_recent = true
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami_id.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [var.sg_id]
}

variable "instance_type" {}
variable "sg_id" {}
