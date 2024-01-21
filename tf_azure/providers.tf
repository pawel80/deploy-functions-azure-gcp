terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.87.0"
    }
  }
  # cloud {} block is needed only when you want to use Terraform CLI to interact with Terraform Cloud
  # cloud {
  #   organization = "tf-pawel-org"
  #   workspaces {
  #     name = "tf-public-cloud"
  #   }
  # }

  # if cloud {} is configured, then backend "remote" should be omitted
  backend "remote" {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-public-cloud"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "RG-MN-TF-STORAGE"
  #   storage_account_name = "abcd1234"
  #   container_name       = "tfstate"
  #   key                  = "prod.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
  # subscription_id   = "<azure_subscription_id>"
  # tenant_id         = "<azure_subscription_tenant_id>"
  # client_id         = "<service_principal_appid>"
  # client_secret     = "<service_principal_password>"
}
