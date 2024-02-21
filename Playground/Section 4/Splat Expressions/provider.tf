variable aws_key {}
variable aws_secret {}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_key
  secret_key = var.aws_secret
}
