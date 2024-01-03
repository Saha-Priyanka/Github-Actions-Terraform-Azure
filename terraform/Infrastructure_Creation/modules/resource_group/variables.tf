# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating resource group to deploy all the resources within resource group in the azure portal.

variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}