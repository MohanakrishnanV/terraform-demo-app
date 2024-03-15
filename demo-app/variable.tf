####################
####   Region   ####
####################
variable "region" {
    default = "ap-south-1"
    description = "AWS region in which the infrastructure is build"
    type = string
}


######################
####   IAM User   ####
######################
variable "iam_user" {
    default = "terraform-user"
    description = "AWS iam user"
    type = string
  
}


#################
####   VPC   ####
#################

variable "vpc_name" {
    default = "vpc-prod"
    description = "VPC for Production enviroment"
    type = string
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "CIDR Block for Production enviroment"
  type = string
}

variable "azs_list" {
    default = ["ap-south-1a", "ap-south-1b"]
    description = "Availability Zones for Production enviroment VPC"
    type = list(string)
}

variable "private_subnets_cidr" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
    description = "CIDR Block for private subnet in Production enviroment"
    type = list(string)
}

variable "public_subnets_cidr" {
    default = ["10.0.101.0/24", "10.0.102.0/24"]
    description = "CIDR Block for public subnet in Production enviroment"
    type = list(string)  
}


variable "database_subnets_cidr" {
    default = ["10.0.151.0/24", "10.0.152.0/24"]
    description = "CIDR Block for database subnets in Production enviroment"
    type = list(string)
}

variable "public_subnets_name" {
    default = "public_subnet"
    description = "Name of Public subnet in Production enviroment"
    type = string
}

variable "private_subnets_name" {
    default = "private_subnet"
    description = "Name of private subnet in Production enviroment"
    type = string
}

variable "database_subnets_name" {
    default = "database_subnet"
    description = "Name of databse subnet in Production enviroment"
    type = string
}