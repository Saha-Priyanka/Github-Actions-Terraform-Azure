# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating loadbalancer to deploy it in the azure portal.

variable "loadbalancer_core_App_Production" {
 description = "Name of loaadbalancer"
  type =string
}
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}
variable "resource_group_name" {
  type    = string
 # default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}

 variable "pip_infrastructure_core_app_production" {
  description = "The ID of the associated public IP address, if any. Set to null if not using a public IP."
  
  type    = string
}


variable "allocation_method_lb"{
  description = "loadbalancer"
  type = string
}

/*
variable "front_ip_name"{
  description = "privet_loadbalancer"
  type = string
}*/
variable "backend_addpool_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "rule_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "protocol_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "front_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "back_port_number"{
  description = "privet_loadbalancer"
  type = number
}
variable "prob_name"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_name_protocol"{
  description = "privet_loadbalancer"
  type = string
}
variable "prob_port_number"{
  description = "privet_loadbalancer"
  type = number
}



/*

 variable "name_vnet1" {
  description = "lb"
  type    = string
}

variable "address_space_vnet1" {
   description = "lb"
  type    = list
}

 variable "name_vnet1_subnet_service" {
  description = "lb"
  type    = string
}

variable "address_space_vnet1_subnet_service" {
   description = "lb"
  type    = list
}
variable "privetip" {
  description = "lb"
  type = list
}*/