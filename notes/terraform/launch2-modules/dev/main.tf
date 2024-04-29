module "vpc" {
  source = "./modules/vpc"
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.vpc_id
}


module "key_pair" {
  source = "./modules/key_pair"
}

module "instances" {
  source             = "./modules/instance"
  instance_type      = "t2.micro"
  ami_id             = "ami-1234567890abcdef0" // Replace with your AMI ID
  key_pair_name      = module.key_pair.key_pair_name
  security_group_ids = [module.security_group.security_group_id]
  subnet_id          = module.vpc.subnet_id
}

