resource "azurerm_resource_group" "rg_func" {
    name = "${var.resource_group_name}"
    location = "${var.resource_group_location}"
}