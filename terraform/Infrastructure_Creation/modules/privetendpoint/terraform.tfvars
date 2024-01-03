# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating private_endpoint to deploy it in the azure portal.

resource_group_name = "ETPXCCDEV-RG"
location = "francecentral"
sku1 = "Standard"
privatelink_service =  "PrivatendpointsPrivatelinkServiceProd" #"priyankalink" 
privatendpoints_corporate_app_production =  "PrivatendpointsCorporateAppProduction" #"priyankaendpoint"
private_service_name =  "PrivatendpointsPrivateServiceNameProd" #"priyankaservice"
publicip_infrastructure_core_app_production =  "PublicipInfrastructureCoreAppProd" #"priyankaendpip"
loadbalancer_core_App_Production_end =  "PrivatendpointsloadbalancerCoreAppProd" #"priyankalbtinni"
name_vnet1 =  "PrivatendpointsVnet1Prod" #"priyankanetwork1"
address_space_vnet1 = ["10.0.0.0/16"]
name_vnet1_subnet_endpoint =  "SubnetEndpointProd" #"priyankaendpoint"
address_space_vnet1_subnet_endpoint = ["10.0.2.0/24"]
name_vnet1_subnet_service =  "SubnetServiceProd" #"service"
address_space_vnet1_subnet_service = ["10.0.1.0/24"]
allocation_method_privetendpoint_pip = "Static" 
