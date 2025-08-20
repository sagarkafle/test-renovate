provider "google" {
  project = var.project
  region  = var.region
}

resource "google_container_cluster" "primary" {
  name     = "argo-cd-gke-cluster"
  location = var.region
  initial_node_count = 1
  min_master_version = 1.25.6-gke.2000
}

# You would typically use a Helm release or a Kubernetes manifest to deploy Argo CD to GKE after the cluster is created.
# Here is an example using the helm_release resource (requires the Helm provider):

provider "helm" {
  kubernetes {
    host                   = google_container_cluster.primary.endpoint
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth[0].cluster_ca_certificate)
  }
}

data "google_client_config" "default" {}

resource "helm_release" "argo_cd" {
  name       = "argo-cd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = 2.5.0
  namespace  = "argo-cd"
  create_namespace = true
}
