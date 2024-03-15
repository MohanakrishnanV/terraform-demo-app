# Create VPC Terraform Module
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.6.0"

  # VPC Basic Details
  name = var.vpc_name
  cidr = var.vpc_cidr
  azs = var.azs_list
  private_subnets = var.private_subnets_cidr
  public_subnets = var.public_subnets_cidr

  create_database_subnet_group = true
  create_database_subnet_route_table = true
  database_subnets = var.database_subnets_cidr

#   create_database_nat_gateway_route = true
#   create_database_internet_gateway_route = true

  enable_nat_gateway = true
  single_nat_gateway = true

  enable_dns_hostnames = true
  enable_dns_support = true


  # Adding Tags to resource
  public_subnet_tags = {
    Name = var.public_subnets_name
  }
  
  private_subnet_tags = {
    Name = var.private_subnets_name
  }

  database_subnet_tags = {
    Name = var.database_subnets_name
  }

  vpc_tags = {
    Name = var.vpc_name
  }


}
