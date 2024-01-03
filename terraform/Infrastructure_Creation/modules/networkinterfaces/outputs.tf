# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating network_interface to deploy it in the azure portal.
/*
output "network_interface_id" {
  description = "The ID of the created network interface."
value = azurerm_network_interface.network_interface.id
}
*/
output "network_interface_names" {
value = [for nic in azurerm_network_interface.network_interface : nic.name]
}