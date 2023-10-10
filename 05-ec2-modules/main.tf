module "instance_type" {
  source = "./instance_type"
}

module "sg" {
  source = "./sg"
}

module "instance" {
  source = "./ec2"
  instance_type = module.instance_type.type
  sg_id = module.sg.sg_id
}

