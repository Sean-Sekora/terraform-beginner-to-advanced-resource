data "aws_ami" "app_ami_us_east_1" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

data "vault_generic_secret" "demo" {
  path = "secret/db_creds"
}
