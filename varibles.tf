variables "aws_region"{
    type = string 
    descripton = "we used this Region for this Project"

}

variables "vpc_cidr"{
      type = string 
    descripton = "we used this CIDR block in this VPC "
}

variables "subnet_cidr"{
      type = string 
    descripton = "we used this CIDR in subnet"
}

variables "bucket_name"{
      type = string 
      descripton = "we used this bucket name for s3"
}

variables "availability_zones" {
    type = list(string)
    description = ""List of target availability zones for subnets"" 
}