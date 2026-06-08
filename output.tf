# 1. Exposed VPC Identifier
output "vpc_id" {
  description = "The ID of the provisioned VPC"
  value       = aws_vpc.main.id
}

# 2. Exposed VPC CIDR Block
output "vpc_cidr_block" {
  description = "The primary CIDR block assigned to the VPC"
  value       = aws_vpc.main.cidr_block
}

# 3. Exposed Public Subnet Identifier
output "public_subnet_id" {
  description = "The ID of the single public subnet"
  value       = aws_subnet.public.id
}

# 4. Exposed Internet Gateway Identifier
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway attached to the VPC"
  value       = aws_internet_gateway.igw.id
}
