# export TF_LOG="DEBUG"

resource "aws_instance" "udemy" {
  ami           = "ami-03c951bbe993ea087"
  instance_type = "t2.micro"
}
