terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.87.0"
    }
  }
  cloud {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-public-cloud"
    }
  }
  # required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
