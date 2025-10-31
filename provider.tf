terraform {
  required_version = ">=1.6.0"
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.29"
    }
    helm = {
      source = "hashicorp/helm"
      version = "~> 2.11"
    }
  }
}

provider "kubernetes" {
  config_path = "C:\\Users\\pc\\.kube\\config"
}

provider "helm" {
  kubernetes {
    config_path = "C:\\Users\\pc\\.kube\\config"
  }
  registry_config_path = "$HOME\\.config\\helm\\registry\\config.json"
  repository_config_path = "$HOME\\.config\\helm\\repositories.yaml"
  repository_cache = "$HOME\\.cache\\helm"
}

