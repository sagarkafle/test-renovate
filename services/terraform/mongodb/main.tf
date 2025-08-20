terraform {
  required_providers {
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.13.0" # not latest
    }
  }
}

provider "mongodbatlas" {
  public_key  = "example"
  private_key = "example"
}
