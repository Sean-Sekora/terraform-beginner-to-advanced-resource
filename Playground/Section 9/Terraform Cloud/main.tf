resource "aws_instance" "udemy_east" {
  ami           = data.aws_ami.app_ami_us_east_1.id
  instance_type = "t2.micro"
}