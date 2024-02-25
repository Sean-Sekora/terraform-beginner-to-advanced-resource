resource "aws_instance" "my_ec2" {
  ami           = var.ami == "" ? data.aws_ami.app_ami.id : var.ami
  instance_type = var.instance_type
}
