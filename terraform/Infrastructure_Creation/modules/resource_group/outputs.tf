# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating resource group to deploy all the resources within resource group in the azure portal.

output "resource_group_name" {
value = azurerm_resource_group.resource_group.name
}
 
output "resource_group_location" {
  value = azurerm_resource_group.resource_group.location
}