terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-state-fab-rg"
    storage_account_name  = "terraformstatefab056"
    container_name        = "tstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  version = ">=2.0"
  # The "feature" block is required for AzureRM provider 2.x.
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "terraform_resource_group_01"
  location = "westeurope"
}
