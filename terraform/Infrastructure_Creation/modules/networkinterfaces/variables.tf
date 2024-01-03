# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating network_interface to deploy it in the azure portal.

variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}
variable "name_network_interfaces" {
  description = "The name of the network interface."
  
  type    = string

}
 
variable "ip_configuration_name" {
  description = "The name of the IP configuration for the network interface."
  
  type    = string
}
 

variable "networkingpip_infrastructure_core_app_production" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}
 
variable "tags" {
  description = "A map of tags to apply to the network interface."
  type        = map(string)
  default     = {}
}
variable "nic_base_name" {
  description = "networkinterface"
  type = string
}



variable "name_virtual_network002" {
  description = "network interfaces"
  type    = string
}

variable "address_space_virtual_network002" {
   description = "network interfaces"
    type    = list
}
variable "name_subnet" {
  description = "network interfaces"
  type    = string
}

variable "address_prefix_subnet" {
   description = "network interfaces"
    type    = list
}
variable "private_ip_address_allocation_networkinterfaces" {
   description = "network interfaces"
    type    = string
}

variable "countit" {
    description = "nicit"
    type = number
  
}
