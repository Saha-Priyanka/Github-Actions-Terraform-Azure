# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating eventhub_namespace to deploy it in the azure portal.

output "namespace_id" {
value = azurerm_eventhub_namespace.eventhub_namespace.id
}