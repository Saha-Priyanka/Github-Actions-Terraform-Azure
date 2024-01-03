# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating resource group to deploy all the resources within resource group in the azure portal.

resource "azurerm_resource_group" "resource_group" {
  name     = upper(var.resource_group_name)
  location = var.location
}