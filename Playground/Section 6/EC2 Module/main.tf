module "udemy_east_1" {
  source = "../modules/ec2"
  region = "us-east-1"
}

module "udemy_west_2" {
  source        = "../modules/ec2"
  instance_type = "t2.nano"
  region        = "us-west-2"
}
