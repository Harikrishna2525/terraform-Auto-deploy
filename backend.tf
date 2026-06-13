terraform {

  backend "s3" {
    bucket         = "hari-tf-state-25"
    key            = "terraform-test/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    encrypt        = true
  }
}