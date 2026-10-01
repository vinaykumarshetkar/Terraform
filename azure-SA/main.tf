data "azurerm_resource_group" "existing" {
  name = "vm-rg"
}

resource "azurerm_storage_account" "storage" {
  name                     = "vinayappstorage001"
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "dev"
    managed_by  = "terraform"
  }
}