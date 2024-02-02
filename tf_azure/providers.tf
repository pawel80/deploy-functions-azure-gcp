terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.87.0"
    }
  }
 # Hashicorp recommends using the cloud block instead of the backend block (legacy)
  cloud {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-azure"
    }
  }

  # You do not need to configure a backend when using Terraform Cloud because 
  # Terraform Cloud automatically manages state in the workspaces associated with your configuration
  # backend "remote" {
  #   organization = "tf-pawel-org"
  #   workspaces {
  #     name = "tf-azure"
  #   }
  # }
}

provider "azurerm" {
  features {}
  tenant_id         = "${var.ARM_TENANT_ID}"
  subscription_id   = "${var.ARM_SUBSCRIPTION_ID}"
  client_id         = "${var.ARM_CLIENT_ID}"
  client_secret     = "${var.ARM_CLIENT_SECRET}"
}
