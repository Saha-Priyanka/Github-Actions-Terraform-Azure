# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating user_assigned_identity to deploy it in the azure portal.

variable "user_assigned_identities_corporate_identity_manager_production" {
  description = "The name of the user-assigned identity"
  type        = string
}
variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}