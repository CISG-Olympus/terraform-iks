terraform {
  required_providers {
    intersight = {
      source  = "ciscodevnet/intersight"
      version = "1.0.11"
    }
  }
  
  provider "intersight" {
    apikey    = var.api_key
    secretkey = var.secretkey
    endpoint  = "https://intersight.com"
  }

#  backend "remote" {
#    hostname     = "app.terraform.io"
#    organization = "CISG-Olympus"
#    workspaces {
#      name = "terraform-iks"
#    }
#  }
}