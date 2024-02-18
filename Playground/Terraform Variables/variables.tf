variable aws_key {
  type = string
}

variable aws_secret {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
