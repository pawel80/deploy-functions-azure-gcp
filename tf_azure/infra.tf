resource "azurerm_resource_group" "rg_func" {
    name = "RG-TF-${var.env_prefix}-FUNCTION"
    location = "${var.rg_location}"
}

resource "random_id" "id" {
    byte_length = 4
}

resource "azurerm_storage_account" "storage" {
  name                     = "tf${var.resource_prefix}storage${random_id.id.hex}"
  resource_group_name      = azurerm_resource_group.rg_func.name
  location                 = azurerm_resource_group.rg_func.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  lifecycle {
    ignore_changes = [ 
        tags
     ]
  }
}

# Y1: Consumption plan includes a monthly free grant of 1 million requests and 
# 400,000 GB-seconds of resource consumption per month per subscription
# F1: free tier with resource cap
resource "azurerm_service_plan" "svc_plan" {
  name                = "tf-${var.resource_prefix}-service-plan"
  resource_group_name = azurerm_resource_group.rg_func.name
  location            = azurerm_resource_group.rg_func.location
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" "func_app" {
  name                = "tf-${var.resource_prefix}-func-app"
  resource_group_name = azurerm_resource_group.rg_func.name
  location            = azurerm_resource_group.rg_func.location

  storage_account_name       = azurerm_storage_account.storage.name
  storage_account_access_key = azurerm_storage_account.storage.primary_access_key
  service_plan_id            = azurerm_service_plan.svc_plan.id

  https_only = true

  site_config {
    application_stack {
      python_version = "3.9"
    }

    # Recommended way of sending logs to App Insights
    # application_insights_connection_string = ""
    # Legacy
    # application_insights_key = ""

  }

  # app_settings = {}
}