
resource "kubernetes_deployment" "example" {
  metadata {
    name = "example"
  }
  spec {
    replicas = 1
    template {
      metadata {
        labels = {
          app = "example"
        }
      }
      spec {
        container {
          image = "nginx:${var.image_version}"
          name  = "nginx"
        }
      }
    }
  }
}
