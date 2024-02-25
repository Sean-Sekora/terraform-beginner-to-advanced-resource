module "udemy_east_1" {
  source        = "../modules/ec2"
  instance_type = lookup(var.instance_types, terraform.workspace, var.instance_types["default"])
}

variable "instance_types" {
  type    = map(string)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.large"
  }
}
