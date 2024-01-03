# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_endpoint to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
  resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/
resource "azurerm_virtual_network" "vnet1" {
  name                = var.name_vnet1
  address_space       = var.address_space_vnet1
  location            = var.location
  resource_group_name = var.resource_group_name
}
resource "azurerm_subnet" "endpoint" {
  name                 = var.name_vnet1_subnet_endpoint
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.address_space_vnet1_subnet_endpoint

private_link_service_network_policies_enabled = false
}

resource "azurerm_subnet" "service" {
  name                 = var.name_vnet1_subnet_service
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = var.address_space_vnet1_subnet_service
 
private_link_service_network_policies_enabled = false
}



resource "azurerm_public_ip" "public_ip2" {
  name                = var.publicip_infrastructure_core_app_production
  sku                 = var.sku1
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method_privetendpoint_pip
}



resource "azurerm_lb" "lb02" {
  name                = var.loadbalancer_core_App_Production_end
  sku                 = var.sku1
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = azurerm_public_ip.public_ip2.name
    public_ip_address_id = azurerm_public_ip.public_ip2.id
  }
}

resource "azurerm_private_link_service" "private_link_service" {
  name                = var.privatelink_service
  location            = var.location
  resource_group_name = var.resource_group_name

  nat_ip_configuration {
    name      = azurerm_public_ip.public_ip2.name
    primary   = true
    subnet_id = azurerm_subnet.service.id
  }

  load_balancer_frontend_ip_configuration_ids = [
    azurerm_lb.lb02.frontend_ip_configuration.0.id,
  ]
}

resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.privatendpoints_corporate_app_production
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = azurerm_subnet.endpoint.id

  private_service_connection {
    name                           = var.private_service_name
    private_connection_resource_id = azurerm_private_link_service.private_link_service.id
    is_manual_connection           = false
  }
}
