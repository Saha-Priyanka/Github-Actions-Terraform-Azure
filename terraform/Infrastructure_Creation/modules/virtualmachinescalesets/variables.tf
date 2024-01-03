# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating virtual_machine_scale_set to deploy it in the azure portal.

variable "virtualmachinescalesets_MyApp_Production" {
  description = "The name of the Virtual Machine Scale Set"
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
variable "instance_count" {
  description = "Number of instances in the Virtual Machine Scale Set"
  type        = number
  
}
variable "name_network_interfaces" {
  description = "The name of the network interface."
  
  type    = string
}



variable "name_vs_virtual_network" {
    description = "vmss"
  type    = string
  
}
variable "address_space_vs_virtual_network" {
  description = "vmss"
  type    = list
}
variable "subnet_vs_service" {
    description = "vmss"
  type    = string
}
variable "address_space_vs_virtual_network_subnet" {
  description = "vmss"
  type    = list
}
variable "vmss_sku" {
    description = "vmss"
  type    = string
}
variable "admin_usernamevmss" {
    description = "vmss"
  type    = string
}
variable "usernamevmss" {
    description = "vmss"
  type    = string
}
variable "publishervmss" {
    description = "vmss"
  type    = string
}
variable "offervmss" {
    description = "vmss"
  type    = string
}
variable "sku_vmss_source" {
    description = "vmss"
  type    = string
}
variable "versionvmss" {
    description = "vmss"
  type    = string
}
variable "cachingvmss" {
    description = "vmss"
  type    = string 
}
variable "storage_account_type" {
  description = "vmss"
  type    = string 
}
variable "name_ipconf_vmss" {
   description = "vmss"
  type    = string  
}
