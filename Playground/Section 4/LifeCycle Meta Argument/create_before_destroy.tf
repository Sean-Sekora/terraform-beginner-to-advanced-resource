resource "aws_instance" "udemy_create_before_destroy" {
  #ami           = data.aws_ami.app_ami.id
  ami           = "ami-0f9c44e98edf38a2b"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "create_before_destroy"
  }
}
