terraform {
  required_providers {
    mysql = {
      source  = "hashicorp/mysql"
      version = "1.9.0" # not latest
    }
  }
}

provider "mysql" {
  endpoint = "localhost:3306"
  username = "root"
  password = "example"
}
