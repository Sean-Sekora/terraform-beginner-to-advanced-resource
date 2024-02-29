terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "sekora-udemy-terraform-state"
    key            = "rds-blue-green/terraform.tfstate"
    dynamodb_table = "sekora-udemy-terraform-lock"
  }
}
