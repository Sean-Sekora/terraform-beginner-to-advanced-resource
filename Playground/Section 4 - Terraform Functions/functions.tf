locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type    = list(string)
  default = ["first_ec2", "second_ec2"]
}

variable "ami" {
  type    = map(string)
  default = {
    "us-east-1"  = "ami-0440d3b780d96b29d"
    "us-west-2"  = "ami-052c9ea013e6e3567"
    "ap-south-1" = "ami-06b72b3b2a773be2b"
  }
}

resource "aws_key_pair" "login_key" {
  key_name   = "login-key"
  public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "app-dev" {
  ami           = lookup(var.ami, var.region)
  instance_type = "t2.micro"
  key_name      = aws_key_pair.login_key.key_name
  count         = 2
  tags          = {
    Name = element(var.tags, count.index)
  }
}
