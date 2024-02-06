terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      # version = "~> 3.83.0"
    }
  }
  # Terraform cloud
  cloud {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-gcp"
    }
  }
}

provider "google" {
  # credentials =   "${var.GOOGLE_CREDENTIALS}"
  project     =   "${var.GOOGLE_PROJECT_ID}"
  region      =   var.gcp_region
  # zone        = var.GCP_ZONE
}