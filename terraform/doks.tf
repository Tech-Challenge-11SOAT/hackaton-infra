resource "digitalocean_kubernetes_cluster" "hackaton_cluster" {
  name   = var.doks_cluster_name
  region = "nyc1"
  version = var.k8s_version

  node_pool {
    name       = var.doks_node_name
    size       = "s-2vcpu-4gb"
    node_count = 3
    auto_scale = true
    min_nodes  = 1
    max_nodes = 5
  }
}