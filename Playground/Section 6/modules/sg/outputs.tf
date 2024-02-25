output "ec2_sg_arn" {
  value = aws_security_group.ec2_sg.arn
}

output "elb_sg_arn" {
  value = aws_security_group.elb_sg.arn
}
