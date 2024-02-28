provider "aws" {
  profile = "udemy_assume_role"
  region  = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::284442860920:role/udemy_assume_role"
    session_name = "udemy_assume_role"
  }
}
