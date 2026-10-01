terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}

  subscription_id = "75e7d133-f97c-4a33-b717-3001b8a3cdd9"
  tenant_id       = "f0e0f34c-1152-4935-89ca-7092db904c79"
}