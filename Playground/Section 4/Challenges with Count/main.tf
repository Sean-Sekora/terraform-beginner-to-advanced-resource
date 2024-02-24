variable "iam_names" {
  type    = list(string)
  #default = ["user1", "user2", "user3"]
  default = ["user0", "user1", "user2", "user3"]
}

resource "aws_iam_user" "iam_users" {
  name  = var.iam_names[count.index]
  count = length(var.iam_names)
  path  = "/system/"
}

output "combined" {
  value = zipmap(aws_iam_user.iam_users[*].name, aws_iam_user.iam_users[*].arn)
}
