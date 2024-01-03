# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_dns_zone to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/

resource "azurerm_private_dns_zone" "private_dns_zone" {
  name                = var.network_privatednszone_microsoft_production
  resource_group_name = var.resource_group_name
}