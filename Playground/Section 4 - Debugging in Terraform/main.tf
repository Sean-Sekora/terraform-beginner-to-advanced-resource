# export TF_LOG="ERROR"

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "udemy" {
  ami           = "ami-03c951bbe993ea087"
  instance_type = "t2.micro"
}
