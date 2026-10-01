output "storage_account_name" {
  value = azurerm_storage_account.storage.name
}

output "storage_account_id" {
  value = azurerm_storage_account.storage.id
}

output "resource_group" {
  value = data.azurerm_resource_group.existing.name
}