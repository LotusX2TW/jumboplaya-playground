terraform {
  required_version = "~>1.3"
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
  region = "us-east-1"
  profile = "default"
}

