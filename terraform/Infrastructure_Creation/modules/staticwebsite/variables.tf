# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating static_site to deploy it in the azure portal. 
 
variable "web_sites_productivity_app_production" {
  description = "The name of the Web App"
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