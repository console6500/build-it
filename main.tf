terraform {
  backend "s3" {
    bucket = "automation-tfstate"
    key    = "build-it/terraform.tfstate"
    region = "us-west-1"
  }
}

data "aws_caller_identity" "id" {}

output "environment" {
  value = terraform.workspace
}

output "aws_caller_identity" {
  value = data.aws_caller_identity.id
}
