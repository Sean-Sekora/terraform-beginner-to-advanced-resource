module "sg" {
  source = "../modules/sg"
}

module "udemy_east_1" {
  source = "../modules/ec2"
  region = "us-east-1"
}

output "ec2_arns" {
  value = module.udemy_east_1.ec2_arns
}

output "ec2_sg_arn" {
  value = module.sg.ec2_sg_arn
}

output "elb_sg_arn" {
  value = module.sg.elb_sg_arn
}
