# 1. Create the VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "main-vpc"
  }
}

# 2. Create the Internet Gateway (IGW)
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main-igw"
  }
}

# 3. Create Public Subnet 1
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets_cidr[0] # Grabs 10.0.1.0/24
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true # Ensures instances get a public IP

  tags = {
    Name = "public-subnet-1"
  }
}

# 4. Create Public Subnet 2
resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.subnets_cidr[1] # Grabs 10.0.2.0/24
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-2"
  }
}

# 5. Create Public Route Table (RT) with Internet Access
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  # This route gives access to the Internet Gateway
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-route-table"
  }
}

# 6. Associate Route Table with Public Subnet 1
resource "aws_route_table_association" "public_1_assoc" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_rt.id
}

# 7. Associate Route Table with Public Subnet 2
resource "aws_route_table_association" "public_2_assoc" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_rt.id
}
