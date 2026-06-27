terraform {
  backend "s3" {
    bucket       = "hari-tf-state-25"
    key          = "Ec2-test/terraform.tfstate"
    use_lockfile = true
    encrypt      = true  
    region       = "us-east-1"
  }
}
