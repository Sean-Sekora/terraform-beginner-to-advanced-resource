resource "aws_instance" "instance-1" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  count         = 5
  tags          = {
    Name = "udemy"
  }
}

resource "aws_iam_user" "lb" {
  name  = var.elb_names[count.index]
  count = 3
  path  = "/system/"
}
