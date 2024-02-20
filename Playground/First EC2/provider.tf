variable aws_key {}
variable aws_secret {}
variable github_token {}

terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.aws_key
  secret_key = var.aws_secret
}

provider "github" {
  token = var.github_token
}
