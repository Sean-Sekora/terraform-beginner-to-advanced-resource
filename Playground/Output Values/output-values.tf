resource "aws_eip" "lb" {
  domain = "vpc"
}

output "public_ip" {
  value = aws_eip.lb.public_ip
}

output "lb" {
  value = aws_eip.lb
}