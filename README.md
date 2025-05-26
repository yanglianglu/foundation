# Terraform Foundation Layer

This repository provisions a minimal, reusable AWS foundation:

* 3-AZ VPC with public & private subnets (no NAT)
* Internet Gateway for public subnets
* Public & private route tables
* DB Subnet Group for RDS
* Gateway & Interface Endpoints (S3, Secrets Manager, KMS, STS)
* Empty Secrets Manager container for database credentials
* Optional customer-managed KMS key (toggle with `enable_kms`)

Higher-level stacks (RDS, Lambda, etc.) consume the outputs via `terraform_remote_state`.
# foundation
