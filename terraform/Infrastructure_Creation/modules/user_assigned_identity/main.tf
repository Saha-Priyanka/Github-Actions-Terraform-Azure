# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating user_assigned_identity to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }/*
  resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}*/

resource "azurerm_user_assigned_identity" "user_assigned_identity" {
  name                = var.user_assigned_identities_corporate_identity_manager_production
resource_group_name = var.resource_group_name
location = var.location
}