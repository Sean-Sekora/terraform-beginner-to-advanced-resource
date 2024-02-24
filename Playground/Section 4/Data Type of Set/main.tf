variable "iam_names" {
  type    = set(string)
  default = ["user1", "user2", "user3", "user3"]
}

output "iam_names" {
  value = var.iam_names
}
