# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_dns_zone to deploy it in the azure portal.

variable "network_privatednszone_microsoft_production" {
 description = "Name of dns zone"
  type =string
}
variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}