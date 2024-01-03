# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_dns_zone to deploy it in the azure portal.

output "dns_zone_id" {
  description = "The ID of the created Azure Private DNS Zone"
value = azurerm_private_dns_zone.private_dns_zone.id
}
