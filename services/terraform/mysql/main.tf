terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.49.0" # not latest
    }
  }
}

provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}
