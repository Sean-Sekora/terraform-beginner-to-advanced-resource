resource "aws_instance" "udemy" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = var.list[2]
  tags          = {
    Name = "udemy"
  }
}
