/*
  Preserving manual changes
*/

resource "aws_instance" "udemy" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "Hello World"
  }

  lifecycle {
    ignore_changes = [tags]
  }
}
