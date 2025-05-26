output "vpc_id" {
  description = "Output the ID for the primary VPC"
  value       = aws_vpc.vpc.id
}

output "vpc_information" {
  description = "VPC Information about Environment"
  value       = "Your ${aws_vpc.vpc.tags.Environment} VPC has an ID of ${aws_vpc.vpc.id}"
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.vpc.cidr_block
}

# Availability Zones
output "availability_zones" {
  description = "List of availability zones in the current region"
  value       = data.aws_availability_zones.available.names
}

output "region" {
  description = "The AWS region in which resources are created"
  value       = data.aws_region.current.name
}

# Subnets
output "public_subnet_ids" {
  description = "IDs of all public subnets"
  value       = [for sn in aws_subnet.public_subnets : sn.id]
}

output "private_subnet_ids" {
  description = "IDs of all private subnets"
  value       = [for sn in aws_subnet.private_subnets : sn.id]
}

output "public_subnet_cidrs" {
  description = "CIDR blocks of all public subnets"
  value       = [for sn in aws_subnet.public_subnets : sn.cidr_block]
}

output "private_subnet_cidrs" {
  description = "CIDR blocks of all private subnets"
  value       = [for sn in aws_subnet.private_subnets : sn.cidr_block]
}

# Route Tables
output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public_route_table.id
}

output "private_route_table_id" {
  description = "ID of the private route table"
  value       = aws_route_table.private_route_table.id
}

# Internet Gateway
output "internet_gateway_id" {
  description = "ID of the Internet Gateway attached to the VPC"
  value       = aws_internet_gateway.internet_gateway.id
}