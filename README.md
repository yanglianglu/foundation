# AWS VPC Terraform Foundation

This repository provides Terraform configuration for creating a complete AWS VPC infrastructure. It creates a production-ready VPC setup with public and private subnets across multiple availability zones.

## Infrastructure Components

- **VPC**: Creates a VPC with customizable CIDR block (default: 10.0.0.0/16)
- **Subnets**:
  - 3 Private subnets across different AZs
  - 3 Public subnets across different AZs
  - Automatic CIDR block calculation using `cidrsubnet` function
- **Networking**:
  - Internet Gateway for public internet access
  - Public Route Table with route to Internet Gateway
  - Private Route Table for internal networking
  - Route Table Associations for all subnets

## Variables

- `aws_region`: AWS region (default: us-east-1)
- `vpc_name`: Name of the VPC (default: omini)
- `vpc_cidr`: VPC CIDR block (default: 10.0.0.0/16)
- `private_subnets`: Map of private subnet names and their number
- `public_subnets`: Map of public subnet names and their number
- `aws_access_key_id`: *(optional)* AWS access key. Defaults to the `AWS_ACCESS_KEY_ID` environment variable if unset.
- `aws_secret_access_key`: *(optional)* AWS secret key. Defaults to the `AWS_SECRET_ACCESS_KEY` environment variable if unset.

## Outputs

- VPC ID and CIDR block
- Public and Private Subnet IDs and CIDR blocks
- Route Table IDs
- Internet Gateway ID
- Region and Availability Zone information

## Usage

1. Clone the repository
2. Configure AWS credentials using environment variables or an AWS credentials file. Do **not** add credentials to `terraform.tfvars`, otherwise Terraform will warn about undefined variables.
   Example:
   ```bash
   export AWS_ACCESS_KEY_ID=your-access-key
   export AWS_SECRET_ACCESS_KEY=your-secret-key
   ```
3. Modify variables in `variables.tf` if needed
4. Run:
```bash
terraform init
terraform plan
terraform apply
```

## Requirements

- Terraform >= 1.12
- AWS Provider
- AWS credentials configured
