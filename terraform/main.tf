provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "sorry_cypress_namespace" {
  metadata {
    name = "sorry-cypress"
  }
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

resource "helm_release" "sorry_cypress" {
  name       = "sorry-cypress"
  namespace  = kubernetes_namespace.sorry_cypress_namespace.metadata[0].name
  repository = "https://sorry-cypress.github.io/charts"
  chart      = "sorry-cypress"
  version    = "1.20.0"

  values = [file("${path.module}/values.yaml")]
}