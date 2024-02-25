module "udemy_1_1" {
  source = "git::ssh://git@github.com/Sean-Sekora/terraform.git//modules/ec2"
}

# terraform state mv module.udemy_1_1.aws_instance.my_ec2 module.udemy_1_2.aws_instance.my_ec2

#module "udemy_1_2" {
#  source = "git::ssh://git@github.com/Sean-Sekora/terraform.git//modules/ec2"
#}
