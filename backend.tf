terraform {
  backend "s3" {
    bucket         = "hari-tf-state-25" 
    key            = "Networking/infra/terraform.tfstate"
    region         = "us-east-1"                        
    encrypt        = true                               
  }
}
