/*output printname {
    value = "Hi, ${var.username}"
}

output "network_interface_id" {
  value = data.azurerm_network_interface.network_interface.id
}*/

/*

 #networkinterfaces  

output "network_interface_id" {
  description = "The ID of the created network interface."
value = azurerm_network_interface.network_interface.id
}

/*
#userassighnedidentity

output "identity_principal_id" {
  value = azurerm_user_assigned_identity.user_assigned_identity.principal_id
}
 
output "identity_client_id" {
  value = azurerm_user_assigned_identity.user_assigned_identity.client_id
}

 
output "identity_object_id" {
  value = azurerm_user_assigned_identity.user_assigned_identity.object_id
}
 
output "identity_id" {
value = azurerm_user_assigned_identity.user_assigned_identity.identity_id
}*/

/*

#namespaces

output "namespace_id" {
value = azurerm_eventhub_namespace.eventhub_namespace.id
}

/*
output "namespace_primary_connection_string" {
  value = azurerm_eventhub_namespace.eveneventhub_namespace.primary_connection_string
}
 
output "namespace_secondary_connection_string" {
  value = azurerm_eventhub_namespace.eventhub_namespace.secondary_connection_string
}
*/
/*
#keyvault

output "key_vault_id" {
value = azurerm_key_vault.key_vault.id
}

output "key_vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}
output "key_vault_tenant_id" {
  value = azurerm_key_vault.key_vault.tenant_id
}


#website

/*output "web_app_id" {
  value = aazurerm_static_site.web.id
}*/
 
/*output "web_app_url" {
  value = azurerm_static_site.site.default_site_hostname
}
 */
/*
#privetendpoint

 output "private_endpoint_id" {
  description = "The ID of the created Azure Private Endpoint"
value = azurerm_private_endpoint.private_endpoint.id
}

#dnszone

output "dns_zone_id" {
  description = "The ID of the created Azure Private DNS Zone"
value = azurerm_private_dns_zone.private_dns_zone.id
}


#virtualmachinescaleset

output "vmss_id" {
  description = "The ID of the created Azure Virtual Machine Scale Set"
value = azurerm_linux_virtual_machine_scale_set.linux_virtual_machine_scale_set.id
}

output "resource_group_name" {
value = azurerm_resource_group.resource_group.name
}
 
output "resource_group_location" {
  value = azurerm_resource_group.resource_group.location
}

# privet load balancer

output "private_lb_id" {
  description = "The ID of the private load balancer"
value = azurerm_lb.plb.id
}
 
output "private_lb_backend_pool_id" {
  description = "The ID of the backend pool for the private load balancer"
value = azurerm_lb_backend_address_pool.lb_backend_address_pool.id
}
*/