# 1. Define required provider and version constraints
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# 2. Configure the AWS Provider
provider "aws" {
  region = "us-east-1"

}
