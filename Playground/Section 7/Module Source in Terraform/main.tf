module "udemy_east_1" {
  source = "git::ssh://git@github.com/Sean-Sekora/terraform.git//modules/ec2"
  region = "us-east-1"
}
