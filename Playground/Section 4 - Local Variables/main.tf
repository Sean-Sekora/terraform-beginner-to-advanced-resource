locals {
  common_tags = {
    Owner   = "udemy"
    service = "backend"
  }
}

resource "aws_instance" "dev" {
  ami           = "ami-02396cdd13e9a1257"
  instance_type = "t2.micro"
  tags          = local.common_tags
}
