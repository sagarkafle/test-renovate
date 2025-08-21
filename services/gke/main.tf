terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.49.1" # not latest
    }
  }
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"
  initial_node_count = 1
  min_master_version = "1.25.6-gke.2000" # not latest
}
