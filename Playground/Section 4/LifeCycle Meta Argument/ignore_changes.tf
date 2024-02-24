resource "aws_instance" "udemy_ignore_changes" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
  
  lifecycle {
    ignore_changes = [instance_type]
  }

  tags = {
    Name = "ignore_changes"
  }
}
