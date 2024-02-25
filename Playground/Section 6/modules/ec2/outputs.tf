output "ec2_arns" {
  value = aws_instance.my_ec2.*.arn
}
