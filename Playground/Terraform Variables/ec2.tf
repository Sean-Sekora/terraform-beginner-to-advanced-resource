resource "aws_instance" "udemy" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = var.instance_type
}