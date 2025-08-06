terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "pooranrg"
    storage_account     = "stgpipe123"
    container_name      = "pipecontainer"
    key                 = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "f96f2e3b-2cc8-4e5e-8ed9-4afb664bb5a8"
}

resource "azurerm_resource_group" "rg" {
  name     = "hiteshrg"
  location = "East US"
}