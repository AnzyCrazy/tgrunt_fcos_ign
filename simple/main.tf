module "vpc" {
  source = "./modules/vpc"
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
  
}

module "ec2" {
  source           = "./modules/ec2"
  av_zone          = module.vpc.av_zone
  public_subnet_id = module.vpc.public_subnet_id
  public_sg_id     = module.sg.public_sg_id
  path             = "./modules/ec2/config.yaml"
}



