resource "aws_iam_user" "iam" {
  for_each = toset( ["0", "1", "2", "3"] )
  name     = "user-${each.key}"
}
