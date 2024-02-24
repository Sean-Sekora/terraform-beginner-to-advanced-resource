resource "aws_instance" "udemy_prevent_destroy" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  lifecycle {
    #prevent_destroy = true
  }

  tags = {
    Name = "prevent_destroy"
  }
}
