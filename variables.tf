variable "aws_region" {
    type = string
    description = "we used this region"
}

variable "vpc_cidr" {
    type = string
    description = "we used this VPC CIDR IP Address "
}

variable "subnets_cidr" {
    type = list(string)
    description = "we used this Subents CIDR"
}


variable "availability_zones" {
    type = list(string)
    description = "we used this AZ"
}