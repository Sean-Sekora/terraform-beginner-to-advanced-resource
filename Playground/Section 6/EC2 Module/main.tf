module "udemy_1" {
  source        = "../modules/ec2"
  instance_type = "t2.nano"
}

module "udemy_2" {
  source        = "../modules/ec2"
  instance_type = "t2.micro"
}
