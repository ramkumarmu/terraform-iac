terraform {
  backend "azurerm" {
    resource_group_name   = "terraform-state-fab-rg"
    storage_account_name  = "terraformstatefab056"
    container_name        = "tstate"
    key                   = "terraform.vm.tfstate"
  }
}
