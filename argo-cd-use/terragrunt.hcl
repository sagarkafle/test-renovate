terraform {
  source = "../modules/argo-cd"
}

inputs = {
  argo_cd_version = "2.5.0" # not latest
  gke_version     = "1.25.6-gke.2000" # not latest
}
