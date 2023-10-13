terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "null" {}

resource "null_resource" "example" {
    triggers = {
      id = uuid()
    } 
    count = 3

    provisioner "local-exec" {
      command = "echo This resource has index ${count.index}"
    }
}
