resource "digitalocean_database_cluster" "hackaton_postgres" {
  name       = var.pg_db_cluster_name
  engine     = "pg"
  version    = "15"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

resource "digitalocean_database_db" "hackaton_database" {
  cluster_id = digitalocean_database_cluster.hackaton_postgres.id
  name       = var.pg_db_database_name
}

resource "digitalocean_database_cluster" "hackaton_mysql" {
  name       = var.mysql_cluster_name
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}

resource "digitalocean_database_db" "hackaton_mysql_database_video" {
  cluster_id = digitalocean_database_cluster.hackaton_mysql.id
  name       = var.mysql_database_name_video
}

resource "digitalocean_database_db" "hackaton_mysql_database_auth" {
  cluster_id = digitalocean_database_cluster.hackaton_mysql.id
  name       = var.mysql_database_name_auth
}

resource "digitalocean_database_db" "hackaton_mysql_database_notification" {
  cluster_id = digitalocean_database_cluster.hackaton_mysql.id
  name       = var.mysql_database_name_notification
}