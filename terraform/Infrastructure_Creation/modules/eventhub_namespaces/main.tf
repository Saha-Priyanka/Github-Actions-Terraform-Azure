# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating eventhub_namespace to deploy it in the azure portal.

provider "azurerm" {
  features {}
  }
 /*
 resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}
*/
 resource "azurerm_eventhub_namespace" "eventhub_namespace" {
  name                = var.eventhub_namespaces_data_processing_dev
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku1
  capacity            = var.capacity
}
