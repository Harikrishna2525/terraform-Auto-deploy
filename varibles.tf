variable "aws_region"{
    type = string 
    description = "we used this Region for this Project"

}

variable "vpc_cidr"{
      type = string 
    description = "we used this CIDR block in this VPC "
}

variable "subnet_cidr"{
      type = list(string) 
      description = "we used this CIDR in subnet"
}

variable "bucket_name"{
      type = string 
      description = "we used this bucket name for s3"
}

variable "availability_zones" {
    type = list(string)
    description = "List of target availability zones for subnets"
}