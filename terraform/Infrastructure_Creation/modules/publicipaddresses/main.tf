# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating public_ip to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
  resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/

resource "azurerm_public_ip" "public_ip" {
  name                = var.public_ip_id
  sku                 = var.sku1
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = var.allocation_method_publicip
}
