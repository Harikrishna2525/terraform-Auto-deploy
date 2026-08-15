module "networking" {
  source = "../modules/vpc"

  vpc_cidr           = var.vpc_cidr
  subnet_cidrs       = var.subnet_cidrs
  availability_zones = var.availability_zones
}

module "ec2" {
  source = "../modules/ec2"

  ec2_name = var.ec2_name
  instac-type = var.server_type
  subnet_id = module.networking.subnet_id

}

module "s3" {
  source = "../modules/s3"
  
  s3_buckets = var.s3_bucket
}