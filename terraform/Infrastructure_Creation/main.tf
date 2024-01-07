
# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating all resources to deploy in the azure portal.
/*

locals {
  first_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
}
  */


terraform {
    required_version = "0.14.8"
    backend "azurerm" {
        resource_group_name = "GitHub_RG"
        storage_account_name = "githubstorageacc"
        container_name = "tfstate1"
        key = "terraform.tfstate"
        arm_subscription_id = "793729a4-a745-4e4f-8b8d-88bda288a86a"
        arm_tenant_id = "1e9cc706-c3fd-4b8c-9dbd-a073e7384b56"
    }
}

/*terraform {
  backend "azurerm" {}
 }*/

provider "azurerm" {
  features {}
  }



# resource group modularaisation

# Purpose : We are creating resource group to deploy all the resources within resource group in the azure portal.

module "azurerm_resource_group" {
  source                = "./modules/resource_group"
  resource_group_name   = upper(var.resource_group_name)
  location              = var.location
}


/*
# network modularaisation

 module "network"{
  source = "./modules/network"
  name_vs_virtual_network = var.name_vs_virtual_network
  address_space_vs_virtual_network = var.address_space_vs_virtual_network
  
 }

# subnet modularaisation

module "subnet" {
  source = "./modules/subnet"
  subnet_vs_service = var.subnet_vs_service
  name_vs_virtual_network = var.name_vs_virtual_network
  address_space_vs_virtual_network_subnet = var.address_space_vs_virtual_network_subnet
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
}*/



#network interface modularaisation

# Purpose : We are creating network_interface to deploy it in the azure portal.

module "az_network_interface" {
  source = "./modules/networkinterfaces"
  #location = var.location
  ip_configuration_name = var.ip_configuration_name
  networkingpip_infrastructure_core_app_production = var.networkingpip_infrastructure_core_app_production
name_network_interfaces = var.name_network_interfaces
resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  address_space_virtual_network002 = var.address_space_virtual_network002
  address_prefix_subnet = var.address_prefix_subnet
  name_virtual_network002 = var.name_virtual_network002
  name_subnet = var.name_subnet
  countit = var.countit
  nic_base_name = var.nic_base_name
  private_ip_address_allocation_networkinterfaces = var.private_ip_address_allocation_networkinterfaces
}



 #user_assigned_identity modularisation

 # Purpose : We are creating user_assigned_identity to deploy it in the azure portal.

 module "azurerm_user_assigned_identity" {
  source = "./modules/user_assigned_identity"
  #location = var.location
  user_assigned_identities_corporate_identity_manager_production = var.user_assigned_identities_corporate_identity_manager_production
resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  
 }





 #namespaces modularisation

 # Purpose : We are creating eventhub_namespace to deploy it in the azure portal.

module "azurerm_eventhub_namespace" {
  source = "./modules/eventhub_namespaces"
  sku1 = var.sku1
  eventhub_namespaces_data_processing_dev = var.eventhub_namespaces_data_processing_dev
  #location = var.location
  capacity = var.capacity
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
}


#keyvault modularisation

# Purpose : We are creating key_vault to deploy it in the azure portal.

module "azurerm_key_vault" {
  source = "./modules/keyvault"
  keyvaults_security_app_production = var.keyvaults_security_app_production
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
 sku_name_keyvault = var.sku_name_keyvault
 key_vault_secret_name =  var.key_vault_secret_name
 key_vault_secret_value = var.key_vault_secret_value
}



#website modularaisation
# Purpose : We are creating static_site to deploy it in the azure portal.
module "azurerm_static_site" {
  source = "./modules/staticwebsite"
  #location = var.location
  web_sites_productivity_app_production = var.web_sites_productivity_app_production
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  
}


#privetendpoint modularaisation
# Purpose : We are creating private_endpoint to deploy it in the azure portal.
module "azurerm_private_endpoint" {
  source = "./modules/privetendpoint"
 # loadbalancer_core_App_Production = var.loadbalancer_core_App_Production
  sku1 = var.sku1
  privatendpoints_corporate_app_production = var.privatendpoints_corporate_app_production
  publicip_infrastructure_core_app_production = var.publicip_infrastructure_core_app_production
  #location = var.location
  private_service_name = var.private_service_name
  privatelink_service = var.privatelink_service
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  address_space_vnet1_subnet_endpoint = var.address_space_vnet1_subnet_endpoint
  name_vnet1 = var.name_vnet1
  name_vnet1_subnet_endpoint = var.name_vnet1_subnet_endpoint
  name_vnet1_subnet_service = var.name_vnet1_subnet_service
  allocation_method_privetendpoint_pip = var.allocation_method_privetendpoint_pip
  address_space_vnet1 = var.address_space_vnet1 
  loadbalancer_core_App_Production_end = var.loadbalancer_core_App_Production_end
  address_space_vnet1_subnet_service = var.address_space_vnet1_subnet_service
}

#public ip modularaisation
# Purpose : We are creating public_ip to deploy it in the azure portal.
module "azurerm_public_ip" {
  source = "./modules/publicipaddresses"
  sku1 = var.sku1
  public_ip_id = var.public_ip_id
  #location = var.location
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  allocation_method_publicip = var.allocation_method_publicip
  
}




#loadbalancer modularaisation
# Purpose : We are creating loadbalancer to deploy it in the azure portal.
module "azurerm_lb" {
  source = "./modules/loadbalancer"
  sku1 = var.sku1
  pip_infrastructure_core_app_production = var.pip_infrastructure_core_app_production
  loadbalancer_core_App_Production = var.loadbalancer_core_App_Production
  #resource_group_name   = module.example_resource_group.resource_group_name
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  allocation_method_lb = var.allocation_method_lb
  front_port_number =  var.front_port_number
  prob_name =  var.prob_name
  prob_name_protocol =  var.prob_name_protocol
  prob_port_number =  var.prob_port_number
  rule_name = var.rule_name 
  back_port_number =  var.back_port_number
  backend_addpool_name =  var.backend_addpool_name
  protocol_name =  var.protocol_name
}





#privetdnszone modularaisation
# Purpose : We are creating private_dns_zone to deploy it in the azure portal.
module "azurerm_private_dns_zone" {
  source = "./modules/privetdnszone"
  network_privatednszone_microsoft_production = var.network_privatednszone_microsoft_production
 # location = var.location
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  
  
}



#virtualmachinescalset modularaisation
# Purpose : We are creating virtual_machine_scale_set to deploy it in the azure portal.
module "azurerm_linux_virtual_machine_scale_set" {
  source = "./modules/virtualmachinescalesets"
  instance_count = var.instance_count
  virtualmachinescalesets_MyApp_Production = var.virtualmachinescalesets_MyApp_Production
 name_network_interfaces= var.name_network_interfaces
 # location = var.location
   resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
  admin_usernamevmss = var.admin_usernamevmss
  address_space_vs_virtual_network = var.address_space_vs_virtual_network
  sku_vmss_source = var.sku_vmss_source
  subnet_vs_service = var.subnet_vs_service
  vmss_sku = var.vmss_sku
  usernamevmss = var.usernamevmss
  offervmss = var.offervmss
  name_vs_virtual_network = var.name_vs_virtual_network
  storage_account_type = var.storage_account_type
  cachingvmss = var.cachingvmss
name_ipconf_vmss = var.name_ipconf_vmss
publishervmss = var.publishervmss
versionvmss = var.versionvmss
address_space_vs_virtual_network_subnet = var.address_space_vs_virtual_network_subnet

}

/*
#keyvault_secret modularaisation

module "azurerm_key_vault1" {
  source = "./modules/keyvault_secret"
  key_vault_secret_name = var.key_vault_secret_name
  keyvaults_secret_security_app_production =  var.keyvaults_secret_security_app_production
  sku_family_secret =  var.sku_family_secret
  key_vault_secret_value =  var.key_vault_secret_value
  sku_name_keyvault_secret =  var.sku_name_keyvault_secret
resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
}

#private_load_balancer modularaisation

module "azurerm_lb1" {
  source = "./modules/privateloadbalancer"
  prob_name =  var.prob_name
  prob_name_protocol =  var.prob_name_protocol
  prob_port_number =  var.prob_port_number
  psku1 =  var.psku1
  rule_name = var.rule_name 
  back_port_number =  var.back_port_number
  backend_addpool_name =  var.backend_addpool_name
  front_ip_name =  var.front_ip_name
  front_port_number = var.front_port_number
  ppip_infrastructure_core_app_production = var.ppip_infrastructure_core_app_production
  allocation_method_plb =  var.allocation_method_plb
  protocol_name =  var.protocol_name
  ploadbalancer_core_App_Production =  var.ploadbalancer_core_App_Production
  resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location
}

#nic_iteration modularaisation

module "az_network_interface" {
  source = "./modules/networkinterface_iteration"
  countit =  var.countit
  address_space_virtual_network002it =  var.address_space_virtual_network002it
  private_ip_address_allocation_networkinterfacesit =  var.private_ip_address_allocation_networkinterfacesit
  name_virtual_network002it =  var.name_virtual_network002it
  name_subnetit =  var.name_subnetit
  ip_configuration_name_it =  var.ip_configuration_name_it
  address_prefix_subnetit =  var.address_prefix_subnetit
  networkingpip_infrastructure_core_app_production_it =  var.networkingpip_infrastructure_core_app_production_it
    resource_group_name = module.azurerm_resource_group.resource_group_name
  location              = module.azurerm_resource_group.resource_group_location

}
*/
