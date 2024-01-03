# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating loadbalancer to deploy it in the azure portal.

loadbalancer_core_App_Production =  "LoadbalancerCoreAppProduction" #"priyankalb"
pip_infrastructure_core_app_production =  "PipInfraCoreAppProd" #"priyankalbpip"
allocation_method_lb = "Static"
sku1 = "Standard"
resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"
#front_ip_name = "PublicIPAddress"
backend_addpool_name = "plbbackendpool"
rule_name = "LBRule"
protocol_name = "Tcp"
front_port_number = 3389
back_port_number = 3389
prob_name = "plbprobe"
prob_name_protocol = "Tcp"
prob_port_number = 80




/*
name_vnet1 =  "PrivatendpointsVnet1Prod" #"priyankanetwork1"
address_space_vnet1 = ["10.0.0.0/16"]
name_vnet1_subnet_service =  "SubnetServiceProd" #"service"
address_space_vnet1_subnet_service = ["10.0.1.0/24"]
privetip = ["10.0.1.4"]
*/