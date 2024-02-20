#### Documentation Referred:

https://registry.terraform.io

#### Azure Provider

```sh
common "azurerm" {}
terraform init
```

#### Digital Ocean Provider:

https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs

```sh
terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.5.0"
    }
  }
}

common "digitalocean" {}
```
```sh
terraform init
```
