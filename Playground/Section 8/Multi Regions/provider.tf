provider "aws" {
  region  = "us-east-1"
  profile = "udemy"
}

provider "aws" {
  alias   = "us-west-2"
  region  = "us-west-2"
  profile = "udemy"
}
