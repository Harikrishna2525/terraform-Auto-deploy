variable "aws_region" {
  type        = string
  description = "we used this Region for this Archiecture"
}

variable "vpr_cidr" {
  type        = string
  description = "we used this IP for VPC Private"
}

variable "subnet_cidr" {
  type        = string
  description = "we used this or subnet IP"
}

variable "website_bucket_name" {
  type        = string
  description = "we used this or website bucket name"
}