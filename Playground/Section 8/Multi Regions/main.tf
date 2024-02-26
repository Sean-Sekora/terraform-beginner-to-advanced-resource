resource "aws_instance" "udemy_east" {
  ami           = data.aws_ami.app_ami_us_east_1.id
  instance_type = "t2.micro"
}

resource "aws_instance" "udemy_west" {
  ami           = data.aws_ami.app_ami_us_west_2.id
  instance_type = "t2.micro"
  provider      = aws.us-west-2
}
