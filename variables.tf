variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_name" {
  type    = string
  default = "omini"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
    "private_subnet_3" = 3
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
    "public_subnet_3" = 3
  }
}

variable "vpc_tags" {
  type = map(string)
  default = {
    Name = "omini"
  }
}

variable "private_subnet_tags" {
  type = map(string)
  default = {
    Name = "private_subnet"
  }
}

variable "public_subnet_tags" {
  type = map(string)
  default = {
    Name = "public_subnet"
  }
}

variable "public_route_table_tags" {
  type = map(string)
  default = {
    Name = "public_rtb"
  }
}

variable "private_route_table_tags" {
  type = map(string)
  default = {
    Name = "private_rtb"
  }
}

variable "internet_gateway_tags" {
  type = map(string)
  default = {
    Name = "igw"
  }
}