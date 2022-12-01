terraform {
  required_version = "~>1.3.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {}  
}

provider "aws" {
  region = var.aws_region
  profile = "default"
}

