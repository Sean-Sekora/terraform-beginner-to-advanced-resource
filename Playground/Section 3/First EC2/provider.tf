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
  region  = "us-east-1"
  profile = "udemy"
}

provider "github" {
  token = var.github_token
}
