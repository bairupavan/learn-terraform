module "mod1" {
  source = "./module1"
}

module "mod2" {
  source = "./module2"
  val = module.mod1.resource
}

