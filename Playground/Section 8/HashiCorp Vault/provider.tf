terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.20.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "~> 3.25.0"
    }
  }
}

provider "aws" {
  profile = "udemy"
  region  = "us-east-1"
}

provider "vault" {
  address = "http://127.0.0.1:8200"
}