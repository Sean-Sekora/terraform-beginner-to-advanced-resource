variable "sg_ports" {
  type    = list(number)
  default = [8200, 8201, 8300, 8301]
}

resource "aws_security_group" "dynamic_sg" {
  name        = "dynamic_sg"
  description = "Allow inbound traffic"

  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
