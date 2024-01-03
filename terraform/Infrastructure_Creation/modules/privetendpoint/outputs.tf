# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_endpoint to deploy it in the azure portal.

 output "private_endpoint_id" {
  description = "The ID of the created Azure Private Endpoint"
value = azurerm_private_endpoint.private_endpoint.id
}/*
output "resource_group_name" {
value = azurerm_resource_group.example.name
}
 
output "resource_group_location" {
  value = azurerm_resource_group.example.location
}*/