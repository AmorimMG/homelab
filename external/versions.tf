terraform {
  required_version = "~> 1.7"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "homelab-external"

    workspaces {
      name = "homelab-external"
    }
  }

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.36.0"
    }

    http = {
      source  = "hashicorp/http"
      version = "~> 3.5.0"
    }
  }
}

provider "kubernetes" {
  # Use KUBE_CONFIG_PATH environment variables
  # Or in cluster service account
}
