module "networking" {
  source = "../modules/vpc"

  vpc_cidr           = var.vpc_cidr
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
}

