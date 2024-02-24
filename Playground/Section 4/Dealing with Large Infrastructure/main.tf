########################
# terraform plan -refresh=false -target=aws_security_group.allow_tls
########################

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP into VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTPS into VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Outbound Allowed"
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "udemy" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = "t2.micro"
  key_name               = "udemy"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
}

resource "aws_instance" "udemy-2" {
  ami                    = data.aws_ami.app_ami.id
  instance_type          = "t2.micro"
  key_name               = "udemy"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
}
