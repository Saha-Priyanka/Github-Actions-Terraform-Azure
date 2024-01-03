# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating network_interface to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/

resource "azurerm_virtual_network" "virtual_network002" {
  name                = var.name_virtual_network002
  address_space       = var.address_space_virtual_network002
  location            = var.location
  resource_group_name = var.resource_group_name
}
  resource "azurerm_subnet" "subnet" {
  name                 = var.name_subnet
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network002.name
  address_prefixes     = var.address_prefix_subnet
  }
resource "azurerm_network_interface" "network_interface" {
  name                = "${var.nic_base_name}${count.index + 1}"
   count               = var.countit
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_configuration {
   name                          = var.ip_configuration_name
   subnet_id                     = azurerm_subnet.subnet.id
   private_ip_address_allocation = var.private_ip_address_allocation_networkinterfaces
  
  }
}
