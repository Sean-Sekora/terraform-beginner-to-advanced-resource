resource "aws_instance" "udemy" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}
