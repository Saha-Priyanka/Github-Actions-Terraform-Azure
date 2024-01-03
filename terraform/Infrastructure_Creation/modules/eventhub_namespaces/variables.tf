# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating eventhub_namespace to deploy it in the azure portal.

variable "eventhub_namespaces_data_processing_dev" {
  description = "The name of the Event Hub namespace"
  type        = string
}
 
variable "sku1" {
  description = "The SKU (tier) of the Event Hub namespace (e.g., Standard, Basic)"
  type        = string
}
 
variable "capacity" {
  description = "The capacity (throughput units) of the Event Hub namespace"
  type        = number
}
variable "resource_group_name" {
  type    = string
  #default = upper("etpx-rg")
}
 
variable "location" {
  type    = string
  default = "westeurope"
}