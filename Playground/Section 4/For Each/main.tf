#resource "aws_iam_user" "iam" {
#  for_each = toset( ["0", "1", "2", "3"] )
#  name     = "user-${each.key}"
#}

resource "aws_instance" "udemy" {
  ami      = data.aws_ami.app_ami.id
  for_each = {
    key1 = "t2.micro"
    key2 = "t2.small"
  }
  instance_type = each.value
  key_name      = each.key
}
