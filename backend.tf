terraform {
  backend "s3" {
    bucket         = "hari-tf-state-25"
    key            = "terraform-vpc-network/terraform.tfstate"
    dynamodb_table = "hari-tf-locked"
    region         = "us-east-1"
    encrypt        = "true"
  }
}