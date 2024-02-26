data "terraform_remote_state" "eip" {
  backend = "s3"

  config = {
    bucket         = "sekora-udemy-terraform-state"
    key            = "section-7/network/eip.tfstate"
    region         = "us-east-1"
    dynamodb_table = "sekora-udemy-terraform-lock"
  }
}