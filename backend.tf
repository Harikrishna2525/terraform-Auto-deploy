terraform {
  backend "s3" {
    bucket       = "hari-tf-state-25"
    key          = "Stage/terraform.tfstate"
    use_lockfile = "true"
    region       = "us-east-1"
    encrypt      = "true"
  }
}
