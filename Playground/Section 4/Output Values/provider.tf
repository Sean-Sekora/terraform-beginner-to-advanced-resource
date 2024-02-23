variable aws_key {}
variable aws_secret {}
provider "aws" {
  region  = "us-east-1"
  profile = "udemy"
}
