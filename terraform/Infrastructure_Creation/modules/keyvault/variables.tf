# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating key_vault to deploy it in the azure portal.

variable "keyvaults_security_app_production" {
  description = "The name of the Key Vault"
  type        = string
}
/* 
variable "sku_family" {
  description = "The SKU family of the Key Vault (e.g., A, H)"
  type        = string
}*/
variable "resource_group_name" {
  type    = string
 # default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}

variable "sku_name_keyvault" {
  type    = string
  description = "keyvault"
  
}
variable "key_vault_secret_name" {
    type    = string
  description = "keyvault secret"
}
variable "key_vault_secret_value" {
    type    = string
  description = "keyvault secret"
}