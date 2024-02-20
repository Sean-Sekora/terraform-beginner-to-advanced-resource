variable aws_key {
  type = string
}

variable aws_secret {
  type = string
}

variable "list" {
  type    = list(string)
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "types" {
  type    = map(string)
  default = {
    us-east-1  = "t2.micro"
    us-west-2  = "t2.nano"
    ap-south-1 = "t2.small"
  }
}

variable "elb_names" {
  type    = list(string)
  default = ["dev-loadbalancer", "stage-loadbalancer", "prod-loadbalancer"]
}
