variable "vpc_cidr" {
  type = string
}

variable "subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "ec2_name" {
  type = string
}

variable "server_type" {
  type = string
}

variable "s3_bucket" {
  type = string
}