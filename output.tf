output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the created subnet"
  value       = aws_subnet.public.id
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "ubuntu_ami_id" {
  description = "The ID of the latest Ubuntu AMI found by the data source"
  value       = data.aws_ami.ubuntu.id
}
