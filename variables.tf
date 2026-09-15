variables "aws_region" {
    type = string
    description = "we used this region"
}

variables "vpc_cidr" {
    type = string
    description = "we used this VPC CIDR IP Address "
}

variables "subnets_cidr" {
    type = list(string)
    description = "we used this Subents CIDR"
}


variables "availability_zones" {
    type = list(string)
    description = "we used this AZ"
}