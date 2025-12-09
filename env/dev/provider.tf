terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.46.0"
    }
  }
    backend "azurerm" {
    resource_group_name = "my_todo_appp"
    storage_account_name = "gabbr21"
    container_name       = "container"
    key                  = "terraform.tfstate"
   }
}

provider "azurerm" {

  features {}
  subscription_id = "3d1ce785-6c4d-4565-bb5e-3b46939260a6"
}
