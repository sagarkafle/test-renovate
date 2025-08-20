terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.85.0" # not latest
    }
  }
}

provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}
