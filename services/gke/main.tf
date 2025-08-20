provider "google" {
  project = "my-gcp-project"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"
  initial_node_count = 1
  min_master_version = "1.25.6-gke.2000" # not latest
}
