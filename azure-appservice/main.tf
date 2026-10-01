data "azurerm_resource_group" "existing" {
  name = "vm-rg"
}

resource "azurerm_service_plan" "app" {
  name                = "vinay-appservice-plan"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location

  os_type  = "Linux"
  sku_name = "B1"
}

resource "azurerm_linux_web_app" "app" {
  name                = "vinay-war-app-001"
  resource_group_name = data.azurerm_resource_group.existing.name
  location            = data.azurerm_resource_group.existing.location
  service_plan_id     = azurerm_service_plan.app.id

  site_config {
    application_stack {
      java_version = "17"
      java_server   = "TOMCAT"
      java_server_version = "10.1"
    }
  }

  https_only = true
}