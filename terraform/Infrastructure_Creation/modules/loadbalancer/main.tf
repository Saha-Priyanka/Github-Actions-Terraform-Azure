# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating loadbalancer to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/

resource "azurerm_public_ip" "public_ip1" {
  name                = var.pip_infrastructure_core_app_production
  sku                 = var.sku1
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method_lb
}
resource "azurerm_lb" "lb1" {
  name                = var.loadbalancer_core_App_Production
  sku                 = var.sku1
  location            = var.location
  resource_group_name = var.resource_group_name

  frontend_ip_configuration {
    name                 = azurerm_public_ip.public_ip1.name
    public_ip_address_id = azurerm_public_ip.public_ip1.id
  
  }
}

resource "azurerm_lb_backend_address_pool" "lb_backend_address_pool" {
  name                = var.backend_addpool_name
loadbalancer_id = azurerm_lb.lb1.id
}
 
resource "azurerm_lb_rule" "lb_rule" {
  loadbalancer_id                = azurerm_lb.lb1.id
  name                           = var.rule_name
  protocol                       = var.protocol_name
  frontend_port                  = var.front_port_number
  backend_port                   = var.back_port_number
  frontend_ip_configuration_name = azurerm_public_ip.public_ip1.name
}
 
resource "azurerm_lb_probe" "lb_probe" {
  name                = var.prob_name
loadbalancer_id = azurerm_lb.lb1.id
  protocol            = var.prob_name_protocol
  port                = var.prob_port_number
}


/*
resource "azurerm_virtual_network" "vnet1" {
  name                = var.name_vnet1
resource_group_name = var.resource_group_name
  location            = var.location
address_space = var.address_space_vnet1
}
 
resource "azurerm_subnet" "service" {
  name                 = var.name_vnet1_subnet_service
resource_group_name = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet1.name 
address_prefixes = var.address_space_vnet1_subnet_service 
}
 
resource "azurerm_lb" "private_lb" {
  name                = var.loadbalancer_core_App_Production
resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku1
 
  frontend_ip_configuration {
    name                 = var.pip_infrastructure_core_app_production
subnet_id = azurerm_subnet.service.id
private_ip_address = var.privetip
    private_ip_address_allocation = var.allocation_method_lb
  }
}*/
 /*
resource "azurerm_lb_backend_address_pool" "private_lb_backend_pool" {
  name                = var.backend_pool_name
resource_group_name = var.resource_group_name
loadbalancer_id = azurerm_lb.private_lb.id
}*/
 /*
resource "azurerm_lb_backend_address_pool" "lb_backend_address_pool" {
  name                = var.backend_addpool_name
loadbalancer_id = azurerm_lb.private_lb.id
}
 
resource "azurerm_lb_rule" "lb_rule" {
  loadbalancer_id                = azurerm_lb.private_lb.id
  name                           = var.rule_name
  protocol                       = var.protocol_name
  frontend_port                  = var.front_port_number
  backend_port                   = var.back_port_number
  frontend_ip_configuration_name = var.pip_infrastructure_core_app_production
}
 
resource "azurerm_lb_probe" "lb_probe" {
  name                = var.prob_name
loadbalancer_id = azurerm_lb.private_lb.id
  protocol            = var.prob_name_protocol
  port                = var.prob_port_number
}
*/