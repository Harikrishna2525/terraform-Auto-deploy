# ==========================================
# 1. NETWORK (VPC, IGW, SUBNETS, RT)
# ==========================================

resource "aws_vpc" "mainvpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true 

  tags = { Name = "main-vpc" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mainvpc.id

  tags = { Name = "main-igw" }
}

resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = var.subnet_cidr[0]
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = { Name = "Public-Subnet-1" }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = var.subnet_cidr[1]
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = { Name = "Public-Subnet-2" }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.mainvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = { Name = "public-route-table" }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_rt.id
}

# ==========================================
# 2. SECURITY GROUP (SG)
# ==========================================

resource "aws_security_group" "ec2_sg" {
  name        = "web-traffic-sg"
  description = "Allow SSH, HTTP, and HTTPS traffic"
  vpc_id      = aws_vpc.mainvpc.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Change to your IP for better security
  }

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTPS"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    description = "CUSTOM"
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = { Name = "web-sg" }
}






