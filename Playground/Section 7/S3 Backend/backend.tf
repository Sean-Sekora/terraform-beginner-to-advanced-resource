terraform {
  backend "s3" {
    bucket = "sekora-udemy-terraform-state"
    key    = "section-7/terraform.tfstate"
    region = "us-east-1"
  }
}
