# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "sg-043e4a1d854d67fed"
resource "aws_security_group" "udemy_import_sg" {
  description = "All access"
  egress      = [
    {
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Managed via Terraform"
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
  ingress                = []
  name                   = "udemy_import_sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags                   = {}
  tags_all               = {}
  vpc_id                 = "vpc-7a20ab00"
}
