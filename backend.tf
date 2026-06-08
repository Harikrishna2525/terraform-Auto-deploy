terraform {
  backend "s3" {
    bucket         = "hari-tf-state-25"
    key            = "terraform-vpc-network/terraform.tfstate"
    use_lockfile = true # <-- New native mechanism
    region         = "us-east-1"
    encrypt        = "true"
  }
}