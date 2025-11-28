terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name = "tfstate-rg"
  #   storage_account_name = "tfstatestorage231928"
  #   container_name       = "dev_tfstate"
  #   key                  = "aks-infra-dev.terraform.tfstate"
  # }
}

provider "azurerm" {

  features {}
  subscription_id = "2c6da294-c904-4801-bffd-cd7f0b236e3d"
}