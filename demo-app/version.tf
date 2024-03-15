# Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.41.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = var.region
  profile = var.iam_user
  
}