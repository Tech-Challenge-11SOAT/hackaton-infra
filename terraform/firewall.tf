resource "digitalocean_database_firewall" "pg_fw" {
  cluster_id = digitalocean_database_cluster.hackaton_postgres.id

  rule {
    type  = "k8s"
    value = digitalocean_kubernetes_cluster.hackaton_cluster.id
  }
}

resource "digitalocean_database_firewall" "mysql_fw" {
  cluster_id = digitalocean_database_cluster.hackaton_mysql.id

  rule {
    type  = "k8s"
    value = digitalocean_kubernetes_cluster.hackaton_cluster.id
  }
}