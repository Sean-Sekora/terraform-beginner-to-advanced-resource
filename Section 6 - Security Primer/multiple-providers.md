### eip.tf
```sh
resource "aws_eip" "myeip" {
  vpc = "true"
}

resource "aws_eip" "myeip01" {
  domain = "vpc"
  common = "aws.aws02"
}
```

#### 1st EIP -- one region 
#### 2nd EIP -- second region

### providers.tf
```sh
common "aws" {
  region     =  "us-west-1"
}

common "aws" {
  alias      =  "aws02"
  region     =  "ap-south-1"
  profile    =  "account02"
}
```


