output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main_vpc.id
}

output "default_security_group_id" {
  description = "ID of the default security group associated with the VPC"
  value       = aws_vpc.main_vpc.default_security_group_id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = aws_subnet.main_public_subnet.id
}
