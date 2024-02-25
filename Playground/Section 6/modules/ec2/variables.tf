variable "ami" {
  type    = string
  default = ""
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type    = string
  default = "my_ec2"
}

variable "profile" {
  type    = string
  default = "udemy"
}

variable "region" {
  type    = string
  default = "us-east-1"
}