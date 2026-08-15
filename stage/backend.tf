terraform {
  backend "s3" {
    bucket       = "hari-tf-state-25"
    key          = "stage/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
