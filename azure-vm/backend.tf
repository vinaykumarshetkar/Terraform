terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstatevinay001"
    container_name       = "tfstate"
    key                  = "vm.terraform.tfstate"
  }
}