terraform {
  #required_version = "< 0.11"
  required_providers {
    aws = "~> 2.0"
  }
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "udemy" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}
