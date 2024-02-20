resource "aws_instance" "dev" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  count         = var.is_test ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.large"
  count         = var.is_test ? 0 : 1
}
