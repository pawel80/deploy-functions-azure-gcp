terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.87.0"
    }
  }
  # cloud {
  #   organization = "tf-pawel-org"
  #   workspaces {
  #     name = "tf-public-cloud"
  #   }
  # }
  # required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
  # subscription_id   = "<azure_subscription_id>"
  # tenant_id         = "<azure_subscription_tenant_id>"
  # client_id         = "<service_principal_appid>"
  # client_secret     = "<service_principal_password>"
}
