terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      # version = "~> 3.83.0"
    }
  }
  # Terraform
  cloud {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-gcp"
    }
  }
}

provider "google" {
  # features {}
  credentials = "${var.GCP_CREDENTIALS}"
  project     = "${var.GCP_PROJECT_ID}"
  # region      = var.GCP_REGION
  # zone        = var.zone
}