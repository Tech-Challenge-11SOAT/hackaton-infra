variable "do_token" {
  description = "DigitalOcean API token for authentication"
  type        = string
}

variable "k8s_version" {
  description = "Version of Kubernetes to use for the cluster"
  type        = string
  
}

variable "doks_cluster_name" {
  description = "Name of the DigitalOcean Kubernetes cluster"
  type        = string
  
}

variable "doks_node_name" {
  description = "Name of the DigitalOcean Kubernetes cluster"
  type        = string
  
}

variable "pg_db_cluster_name" {
  description = "Name of the DigitalOcean cluster Postgres database"
  type        = string
}

variable "pg_db_database_name" {
  description = "Name of the DigitalOcean Postgres database"
  type        = string
}

variable "mysql_cluster_name" {
  type    = string
}

variable "mysql_database_name_video" {
  type    = string
}

variable "mysql_database_name_auth" {
  type    = string
}