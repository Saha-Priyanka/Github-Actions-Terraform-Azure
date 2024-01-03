# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating virtual_machine_scale_set to deploy it in the azure portal.

locals {
  first_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC+wWK73dCr+jgQOAxNsHAnNNNMEMWOHYEccp6wJm2gotpr9katuF/ZAdou5AaW1C61slRkHRkpRRX9FA9CYBiitZgvCCz+3nWNN7l/Up54Zps/pHWGZLHNJZRYyAB6j5yVLMVHIHriY49d/GZTZVNB8GoJv9Gakwc/fuEZYYl4YDFiGMBP///TzlI4jhiJzjKnEvqPFki5p2ZRJqcbCiF4pJrxUQR/RXqVFQdbRLZgYfJ8xGB878RENq3yQ39d8dVOkq4edbkzwcUmwwwkYVPIoDGsYLaRHnG+To7FvMeyO7xDVQkMKzopTQV8AuKpyvpqu0a9pWOMaiCyDytO7GGN you@me.com"
}
provider "azurerm" {
  features {}
  }/*
  resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/
resource "azurerm_virtual_network" "virtual_network" {
  name                = var.name_vs_virtual_network
  address_space       = var.address_space_vs_virtual_network
  location            = var.location
  resource_group_name = var.resource_group_name
}
resource "azurerm_subnet" "service" {
  name                 = var.subnet_vs_service
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.address_space_vs_virtual_network_subnet
}
resource "azurerm_linux_virtual_machine_scale_set" "linux_virtual_machine_scale_set" {
  name                = var.virtualmachinescalesets_MyApp_Production
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.vmss_sku
  
 
  instances = var.instance_count
 
  admin_username = var.admin_usernamevmss
   admin_ssh_key {
    username   = var.usernamevmss
    public_key = local.first_public_key
  }
 
  source_image_reference {
    publisher = var.publishervmss
    offer     = var.offervmss
    sku       = var.sku_vmss_source
    version   = var.versionvmss
  }
 
  os_disk {
    caching              = var.cachingvmss
    storage_account_type = var.storage_account_type
  }
 
  
    network_interface {
    name    = var.name_network_interfaces
    primary = true

    ip_configuration {
      name      = var.name_ipconf_vmss
      primary   = true
      subnet_id = azurerm_subnet.service.id
      
}
    }
    }