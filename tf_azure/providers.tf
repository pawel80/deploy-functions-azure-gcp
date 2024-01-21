terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 3.87.0"
    }
  }
  # cloud {} block is needed when you want to use Terraform CLI to interact with Terraform Cloud
  cloud {
    organization = "tf-pawel-org"
    workspaces {
      name = "tf-azure"
    }
  }
  # }

  # if cloud {} is configured, then backend "remote" should be omitted
  # if remote backend is configured, it needs to know the Azure credentials
  # backend "remote" {
  #   organization = "tf-pawel-org"
  #   workspaces {
  #     name = "tf-public-cloud"
  #   }
  # }
  # backend "azurerm" {
  #   resource_group_name  = "RG-MN-TF-STORAGE"
  #   storage_account_name = "abcd1234"
  #   container_name       = "tfstate"
  #   key                  = "prod.terraform.tfstate"
  # }
}

provider "azurerm" {
  features {}
  tenant_id         = "${var.ARM_TENANT_ID}"
  subscription_id   = "${var.ARM_SUBSCRIPTION_ID}"
  client_id         = "${var.ARM_CLIENT_ID}"
  client_secret     = "${var.ARM_CLIENT_SECRET}"
}
