# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_endpoint to deploy it in the azure portal.

variable "privatelink_service" {
  description = "name of privetlink_service"
  type = string
}

variable "privatendpoints_corporate_app_production" {
  description = "Name of the Azure Private Endpoint"
  type =string
}

variable "private_service_name" {
  description = "Name of the Azure Private service"
  type =string
}
variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "francecentral"
}
variable "loadbalancer_core_App_Production_end" {
 description = "Name of loaadbalancer"
  type =string
}
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}
 variable "publicip_infrastructure_core_app_production" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}


 variable "name_vnet1" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1" {
    description = "privetendpoint"
  type    = list
}
 variable "name_vnet1_subnet_endpoint" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1_subnet_endpoint" {
    description = "privetendpoint"
  type    = list
}
 variable "name_vnet1_subnet_service" {
  description = "privetendpoint"
  type    = string
}

variable "address_space_vnet1_subnet_service" {
    description = "privetendpoint"
  type    = list
}
variable "allocation_method_privetendpoint_pip" {
     description = "privetendpoint"
  type    = string
}
