terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    bucket       = "tech-challenge-soat11-terraform-state"
    key          = "doks/terraform/state"
    region       = "us-east-1"
    use_lockfile = true
  }
}

provider "digitalocean" {
  token = var.do_token
}