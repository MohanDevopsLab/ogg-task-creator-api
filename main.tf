# provider "aws" {
#   #version = "~> 2.0"
#   #region  = var.aws_region
#   profile = "default"
# }

# provider "archive" {
#   version = "~> 1.3"
# }

# provider "template" {
#   version = "~> 2.1"
# }

# ## Defining locals
# locals{
#    lambda_dotnet_zip = "./archive/requests_layer_python38.zip"
# }

locals {
  lambda_dotnet_zip = "archive/requests_layer_python38.zip"
}

module "alb" {
  source = "./modules/alb"
  ogg-task-creator-api-arn = module.lambda.ogg-task-creator-api-arn
}

module "lambda" {
  source              = "./modules/lambda"
  ogg_lambda_role_arn = var.lambda_role_arn
}

module "sqs" {
  source = "./modules/sqs"
}

/*module "ssm" {
  source                      = "./modules/ssm"
  clp_endpoint                = var.clp-endpoint
  clp_index                   = var.index
  ogg_endpoint                = var.endpoint
  ogg_api_url                 = var.ogg-url
  ogg_upload_deadletter_queue = var.ogg-deadletter-queue
  ogg_upload_queue            = var.ogg-queue
}*/

