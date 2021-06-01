resource "azurerm_network_ddos_protection_plan" "ddos_plan" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  tags                = var.tags
}