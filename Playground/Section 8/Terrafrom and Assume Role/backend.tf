terraform {
  backend "s3" {
    region         = "us-east-1"
    bucket         = "sekora-udemy-terraform-state"
    key            = "section-8/multi-region/terraform.tfstate"
    dynamodb_table = "sekora-udemy-terraform-lock"
  }
}
