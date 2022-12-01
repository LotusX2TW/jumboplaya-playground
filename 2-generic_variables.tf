variable "aws_region" {
    description = "Region in which AWS resources to be created"
    type = string
    default = "us-east-1"
}

variable "environment" {
  description = "Environment Variable used as a prefix"
  default = "prod"
  type = string
}

variable "engineering_division" {
  description = "Engineering division in this organization"
  default = "Cloud"
}