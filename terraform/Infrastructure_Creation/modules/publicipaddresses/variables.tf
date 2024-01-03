 # Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating public_ip to deploy it in the azure portal.
 
 variable "public_ip_id" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}
 variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}


variable "allocation_method_publicip" {
  type = string
  description = "publicip"
}