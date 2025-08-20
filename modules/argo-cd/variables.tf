variable "argo_cd_version" {
  description = "Argo CD version to deploy"
  type        = string
  default     = "2.5.0" # not latest
}

variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "gke_version" {
  description = "GKE master version"
  type        = string
  default     = "1.25.6-gke.2000"
}
