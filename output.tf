output "id" {
    value = azurerm_network_ddos_protection_plan.ddos_plan.id
}
output "vnet_ids" {
    value = {for vnet,id in azurerm_network_ddos_protection_plan.ddos_plan.virtual_network_ids: vnet => id}
}