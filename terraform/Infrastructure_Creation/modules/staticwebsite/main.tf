# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating static_site to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }
  /*
  resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}
*/
resource "azurerm_static_site" "static_site" {
  name                = var.web_sites_productivity_app_production
  resource_group_name = var.resource_group_name
  location            = var.location
}
