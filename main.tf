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
