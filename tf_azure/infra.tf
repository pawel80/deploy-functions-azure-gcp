resource "azurerm_resource_group" "rg_func" {
    name = "RG-TF-${var.env_prefix}-FUNCTION"
    location = "${var.rg_location}"
}

resource "random_id" "random_suffix" {
    byte_length = 8
}

resource "azurerm_storage_account" "storage" {
  name                     = "tf-${var.resource_prefix}-storage-${random_id.random_suffix.hex}"
  resource_group_name      = azurerm_resource_group.rg_func.name
  location                 = azurerm_resource_group.rg_func.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# resource "azurerm_service_plan" "example" {
#   name                = "example-app-service-plan"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location
#   os_type             = "Linux"
#   sku_name            = "Y1"
# }

# resource "azurerm_linux_function_app" "example" {
#   name                = "example-linux-function-app"
#   resource_group_name = azurerm_resource_group.example.name
#   location            = azurerm_resource_group.example.location

#   storage_account_name       = azurerm_storage_account.example.name
#   storage_account_access_key = azurerm_storage_account.example.primary_access_key
#   service_plan_id            = azurerm_service_plan.example.id

#   site_config {}
# }