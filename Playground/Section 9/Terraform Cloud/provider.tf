terraform {
  cloud {
    organization = "sekora"
    workspaces {
      name = "udemy"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "udemy"
  region  = "us-east-1"
}
