# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating key_vault to deploy it in the azure portal.
/*
provider "azurerm" {
  features {}
  }*/
/*
resource "azurerm_resource_group" "resource_group" {
  name     = "priyanka-tf-test"
  location = var.location
}
*//*
data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "key_vault" {
  name                        = var.keyvaults_security_app_production
  resource_group_name         = var.resource_group_name
  location                    = var.location
  sku_name                    = var.sku_name_keyvault
  tenant_id                   =  data.azurerm_client_config.current.tenant_id
}
*/

provider "azurerm" {
  features {
    key_vault {
      purge_soft_deleted_secrets_on_destroy = true
      recover_soft_deleted_secrets          = true
    }
  }
}

data "azurerm_client_config" "current" {}
/*
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
*/
resource "azurerm_key_vault" "key_vault" {
  name                       = var.keyvaults_security_app_production
  location                   = var.location
  resource_group_name        = var.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = var.sku_name_keyvault
  soft_delete_retention_days = 7

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get",
      "List",
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover",
      "List"
    ]
  }
}

resource "azurerm_key_vault_secret" "key_vault_secret" {
  name         = var.key_vault_secret_name
  value        = var.key_vault_secret_value
  key_vault_id = azurerm_key_vault.key_vault.id
expiration_date = "2024-12-07T00:00:00Z"
}