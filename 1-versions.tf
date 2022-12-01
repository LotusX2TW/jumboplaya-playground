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
  access_key = "AKIAYFA3Y36KBK3J27VT"
  secret_key = "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"
}

