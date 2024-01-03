# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating public_ip to deploy it in the azure portal.

resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"

public_ip_id =  "PublicipidInfrastructureCoreappProd" #"priyankapublicip2"
allocation_method_publicip = "Static" 
sku1 = "Standard"