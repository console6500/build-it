terraform {
  backend "s3" {
    bucket = "automation-tfstate"
    key    = "build-it/terraform.tfstate"
    region = "us-west-2"
  }
}

variable "environment" {
  type = string
}

data "aws_caller_identity" "id" {}

output "environment" {
  value = var.environment
}

output "aws_caller_identity" {
  value = data.aws_caller_identity.id
}
