terraform {
  backend "s3" {
    bucket         = "sekora-udemy-terraform-state"
    key            = "section-7/import/ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sekora-udemy-terraform-lock"
  }
}
