variable environment {
  description = "dev, uat or prod"
}

# variable aws_accountid {
# }

# variable "aws_region" {
#   description = "The AWS region"
#   default     = "us-east-1"
# }

variable "lambda_role_arn" {
  description = "ARN of the ogg lambda role."
}

variable "clp-endpoint" {
  type = string
}

variable "index" {
  type = string
}

variable "endpoint" {
  type = string
}

variable "ogg-url" {
  type = string
}

variable "ogg-deadletter-queue" {
  type = string
}

variable "ogg-queue" {
  type = string
}

# variable "ogg-task-creator-arn" {
#   type = string
# }