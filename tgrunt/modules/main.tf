module "vpc" {
  source = "./vpc"
  env    = var.env
}

module "sg" {
  source = "./sg"
  vpc_id = module.vpc.vpc_id
  env    = var.env
}

module "ec2" {
  source           = "./ec2"
  av_zone          = module.vpc.av_zone
  public_subnet_id = module.vpc.public_subnet_id
  public_sg_id     = module.sg.public_sg_id
  env              = var.env
  path             = "./ec2/config.yaml"
}
