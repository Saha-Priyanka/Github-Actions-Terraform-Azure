variable "azure_subscription_id" {
    type = "string"
    default = "793729a4-a745-4e4f-8b8d-88bda288a86a"
}
variable "azure_tenant_id" {
    type = "string"
    default = "1e9cc706-c3fd-4b8c-9dbd-a073e7384b56"
}
/*variable username {}*/

/*data "azurerm_network_interface" "network_interface" {
  name                = azurerm_network_interface.network_interface.name
  resource_group_name = azurerm_resource_group.resource_group.name
}


 
variable "nic_names" {
  type    = list(string)
  description = "List of network interface names"
}
 
variable "nic_location" {
  type    = string
  default = "East US" # Change this to the desired location
  description = "Location for the network interfaces"
}
 
variable "nic_rg_name" {
  type    = string
  description = "Resource group name for the network interfaces"
}
 
variable "nic_subnet_id" {
  type    = string
  description = "ID of the subnet to associate with the network interfaces"
}
 
variable "nic_ip_configurations" {
  type = list(map(object({
    name                          = string
    private_ip_address_allocation = string
    public_ip_address_id          = string
  })))
  description = "List of IP configurations for the network interfaces"
}
*/




/*

variable "resource_group_name" {
  description = "The name of the resource group in which to create the network interface."
   type    = string
}
 */

# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating all resources to deploy in the azure portal.

#networkinterfaces
 
variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}

variable "name_network_interfaces" {
  type = string
}
variable "name_virtual_network002" {
  description = "network interfaces"
  type    = string
}

variable "address_space_virtual_network002" {
   description = "network interfaces"
    type    = list
}
variable "name_subnet" {
  description = "network interfaces"
  type    = string
}
variable "nic_base_name" {
  description = "networkinterface"
  type = string
}
variable "address_prefix_subnet" {
   description = "network interfaces"
    type    = list
}
variable "private_ip_address_allocation_networkinterfaces" {
   description = "network interfaces"
    type    = string
}



 /*
variable "subnet_id" {
  description = "The ID of the subnet to which the network interface will be attached."
  
  type    = string
}
 */

 
 
 
variable "ip_configuration_name" {
  description = "The name of the IP configuration for the network interface."
  
  type    = string
}
 

variable "networkingpip_infrastructure_core_app_production" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}

variable "tags" {
  description = "A map of tags to apply to the network interface."
  type        = map(string)
  default     = {}
}

variable "countit" {
    description = "nicit"
    type = number
  
}
#loadbalancer

variable "loadbalancer_core_App_Production" {
 description = "Name of loaadbalancer"
  type =string
}
 variable "pip_infrastructure_core_app_production"  {
  description = "loadbalancer" 
   type =string
 }
variable "allocation_method_lb"{
  description = "loadbalancer"
  type = string
}
/*
variable "front_ip_name"{
  description = "privet_loadbalancer"
  type = string
}*/


variable "backend_addpool_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "rule_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "protocol_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "front_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "back_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "prob_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_name_protocol"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_port_number"{
  description = "privet_loadbalancer"
  type = number
}

#privetendpoint

variable "privatelink_service" {
  description = "name of privetlink_service"
  type = string
}

variable "privatendpoints_corporate_app_production" {
  description = "Name of the Azure Private Endpoint"
  type =string
}
variable "loadbalancer_core_App_Production_end" {
 description = "Name of loaadbalancer"
  type =string
}
variable "private_service_name" {
  description = "Name of the Azure Private service"
  type =string
}
variable "publicip_infrastructure_core_app_production" {
  description = "endpoint"
  type= string
}

 variable "name_vnet1" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1" {
    description = "privetendpoint"
  type    = list
}
 variable "name_vnet1_subnet_endpoint" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1_subnet_endpoint" {
    description = "privetendpoint"
  type    = list
}
 variable "name_vnet1_subnet_service" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1_subnet_service" {
    description = "privetendpoint"
  type    = list
}
variable "allocation_method_privetendpoint_pip" {
     description = "privetendpoint"
  type    = string
}

#dnszone

variable "network_privatednszone_microsoft_production" {
 description = "Name of dns zone"
  type =string
}



/*variable "location_user_identity" {
  description = "The Azure region where the resources will be created"
  type        = string
}*/
 





 
#userassighnedidentity

variable "user_assigned_identities_corporate_identity_manager_production" {
  description = "The name of the user-assigned identity"
  type        = string
}
/*
variable "name_application_insights" {
  type = string
}
*/





# namespace

variable "eventhub_namespaces_data_processing_dev" {
  description = "The name of the Event Hub namespace"
  type        = string
}
 
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}
 
variable "capacity" {
  description = "The capacity (throughput units) of the Event Hub namespace"
  type        = number
}


#keyvault



variable "keyvaults_security_app_production" {
  description = "The name of the Key Vault"
  type        = string
}
 /*
variable "sku_family_secret" {
  description = "The SKU family of the Key Vault (e.g., A, H)"
  type        = string
}
variable "resource_group_name" {
  type    = string
 # default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}
*/




variable "sku_name_keyvault" {
  type    = string
  description = "keyvault secret"
  
}
variable "key_vault_secret_name" {
    type    = string
  description = "keyvault secret"
}
variable "key_vault_secret_value" {
    type    = string
  description = "keyvault secret"
}

 #staticwebsite

 variable "web_sites_productivity_app_production" {
  description = "The name of the Web App"
  type        = string
}

#virtualmachinescaleset

variable "virtualmachinescalesets_MyApp_Production" {
  description = "The name of the Virtual Machine Scale Set"
  type        = string
}
 

variable "name_vs_virtual_network" {
    description = "vmss"
  type    = string
  
}
variable "address_space_vs_virtual_network" {
  description = "vmss"
  type    = list
}
variable "subnet_vs_service" {
    description = "vmss"
  type    = string
}
variable "address_space_vs_virtual_network_subnet" {
  description = "vmss"
  type    = list
}
variable "vmss_sku" {
    description = "vmss"
  type    = string
}
variable "admin_usernamevmss" {
    description = "vmss"
  type    = string
}
variable "usernamevmss" {
    description = "vmss"
  type    = string
}
variable "publishervmss" {
    description = "vmss"
  type    = string
}
variable "offervmss" {
    description = "vmss"
  type    = string
}
variable "sku_vmss_source" {
    description = "vmss"
  type    = string
}
variable "versionvmss" {
    description = "vmss"
  type    = string
}
variable "cachingvmss" {
    description = "vmss"
  type    = string 
}
variable "storage_account_type" {
  description = "vmss"
  type    = string 
}
variable "name_ipconf_vmss" {
   description = "vmss"
  type    = string  
}

 
variable "instance_count" {
  description = "Number of instances in the Virtual Machine Scale Set"
  type        = number
  
}

#publicip

 variable "public_ip_id" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}
variable "allocation_method_publicip" {
  type = string
  description = "publicip"
}

/*
 
variable "admin_username" {
  description = "Admin username for the Virtual Machine Scale Set instances"
  type        = string
}
 
variable "admin_password" {
  description = "Admin password for the Virtual Machine Scale Set instances"
  type        = string
}*/
/*
  #private load balancer

variable "ploadbalancer_core_App_Production" {
 description = "Name of privet_loaadbalancer"
  type =string
}
variable "psku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}

 variable "ppip_infrastructure_core_app_production" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}


variable "allocation_method_plb"{
  description = "privet_loadbalancer"
  type = string
}
variable "front_ip_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "backend_addpool_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "rule_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "protocol_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "front_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "back_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "prob_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_name_protocol"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_port_number"{
  description = "privet_loadbalancer"
  type = number
}

*/
#nic_iteration
/*
start
variable "name_network_interfaces_it" {
  description = "The name of the network interface."
  
  type    = string

}
 
variable "ip_configuration_name_it" {
  description = "The name of the IP configuration for the network interface."
  
  type    = string
}
 

variable "networkingpip_infrastructure_core_app_production_it" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}
 /*
variable "tags" {
  description = "A map of tags to apply to the network interface."
  type        = map(string)
  default     = {}
}




variable "name_virtual_network002it" {
     description = "nicit"
  type    = string
}

variable "address_space_virtual_network002it" {
     description = "nicit"
    type    = list
}
variable "name_subnetit" {
    description = "nicit"
  type    = string
}

variable "address_prefix_subnetit" {
     description = "nicit"
    type    = list
}
variable "private_ip_address_allocation_networkinterfacesit" {
   description = "nicit"
    type    = string
}

variable "countit" {
    description = "nicit"
    type = number
  
}
/*

#keyvault secret


variable "keyvaults_secret_security_app_production" {
  description = "The name of the Key Vault"
  type        = string
}
 
variable "sku_family_secret" {
  description = "The SKU family of the Key Vault (e.g., A, H)"
  type        = string
}


variable "sku_name_keyvault_secret" {
  type    = string
  description = "keyvault secret"
  
}
variable "key_vault_secret_name" {
    type    = string
  description = "keyvault secret"
}
variable "key_vault_secret_value" {
    type    = string
  description = "keyvault secret"
}

*/
