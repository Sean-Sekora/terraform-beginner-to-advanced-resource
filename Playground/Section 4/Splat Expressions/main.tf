resource "aws_iam_user" "lb" {
  name  = "iamuser.${count.index}"
  count = 3
  path  = "/system/"
}

output "iam_user" {
  value = aws_iam_user.lb[*].arn
}
