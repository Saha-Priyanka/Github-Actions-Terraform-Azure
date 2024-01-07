# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating all resources to deploy in the azure portal.

#name_application_insights = "priyanka-tf-test-appinsights"

resource_group_name = "etpxccdev-rg"   #"ETPXCCDEV-RG"
location = "westeurope"

#networkinterfaces
countit = 10
name_network_interfaces =  "NetworkinterfacesInfrastructureCoreappProd" #"priyankanic"
ip_configuration_name =  "IpconfigurationnameInfrastructureCoreappProd" #"priyankaip"
networkingpip_infrastructure_core_app_production = "NetworkingpipInfrastructureCoreappProd" #"priyankapublicip" 
name_virtual_network002 = "Virtualnetwork002InfrastructureCoreappProd" #"priyankanetwork002" 
address_space_virtual_network002 = ["11.0.0.0/16"]
name_subnet =  "SubnetInfrastructureCoreappProd" #"priyankasubnet"
address_prefix_subnet =  ["11.0.3.0/24"]
private_ip_address_allocation_networkinterfaces = "Dynamic"
nic_base_name = "networkic"

#publicip

public_ip_id =  "PublicipidInfrastructureCoreappProd" #"priyankapublicip2"
allocation_method_publicip = "Static" 

sku1 = "Standard"

#loadbalancer

loadbalancer_core_App_Production = "LoadbalancerCoreAppProduction" #"priyankalb"
pip_infrastructure_core_app_production =  "PipInfraCoreAppProd" #"priyankalbpip"
allocation_method_lb = "Static"
#front_ip_name = "PublicIPAddress"
backend_addpool_name = "plbbackendpool"
rule_name = "LBRule"
protocol_name = "Tcp"
front_port_number = 3389
back_port_number = 3389
prob_name = "plbprobe"
prob_name_protocol = "Tcp"
prob_port_number = 80

#privetendpoint

privatelink_service =  "PrivatendpointsPrivatelinkServiceProd" #"priyankalink" 
privatendpoints_corporate_app_production =  "PrivatendpointsCorporateAppProduction" #"priyankaendpoint"
private_service_name =  "PrivatendpointsPrivateServiceNameProd" #"priyankaservice"
publicip_infrastructure_core_app_production =  "PublicipInfrastructureCoreAppProd" #"priyankaendpip"
loadbalancer_core_App_Production_end =  "PrivatendpointsloadbalancerCoreAppProd" #"priyankalbtinni"
name_vnet1 =  "PrivatendpointsVnet1Prod" #"priyankanetwork1"
address_space_vnet1 = ["12.0.0.0/16"]
name_vnet1_subnet_endpoint =  "SubnetEndpointProd" #"priyankaendpoint"
address_space_vnet1_subnet_endpoint = ["12.0.2.0/24"]
name_vnet1_subnet_service =  "SubnetServiceProd" #"service"
address_space_vnet1_subnet_service = ["12.0.1.0/24"]
allocation_method_privetendpoint_pip = "Static" 

#dnszone

network_privatednszone_microsoft_production = "NetworkPrivateDNSZone.com" #"priyanka.com" 

#userassighnedidentity

user_assigned_identities_corporate_identity_manager_production =  "UsersssignedidentitiesCorporateIdentitymanagerProd" #"priyankaidentity"

#namespace

eventhub_namespaces_data_processing_dev = "EventhubnamespacesDataprocessingDev" #"priyankanamespaces" 
#sku1 = "Standard"
capacity = 1

#keyvault

keyvaults_security_app_production = "keyvaultsecurity0845" #"priya6tamankavault"
#sku_family = "A"
/*
resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"*/




sku_name_keyvault = "premium"
key_vault_secret_name = "secret-sauce"
key_vault_secret_value = "szechuan"


 #Staticwebsite

 web_sites_productivity_app_production =  "StaticwebsitesProductivityappProdSite" #"priyankasite"

 #virtualmachinescaleset

 virtualmachinescalesets_MyApp_Production =  "VirtualmachinescalesetsMyAppProd" #"priyankavmss"
 instance_count = 1
  publishervmss = "Canonical"
    offervmss    = "UbuntuServer"
    sku_vmss_source  = "18.04-LTS"
    versionvmss   = "latest"
     cachingvmss              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name_vs_virtual_network =  "VirtualmachinescalesetsVirtualnetworkProd" #"priyankanetwork"
    address_space_vs_virtual_network = ["11.0.0.0/16"]
    subnet_vs_service = "VirtualmachinescalesetsSubnetService" #"service" 
    address_space_vs_virtual_network_subnet = ["11.0.1.0/24"]
    vmss_sku = "Standard_F2"
    admin_usernamevmss = "adminuser"
    usernamevmss = "adminuser"
  name_ipconf_vmss = "internal"
/*
  #private load balancer

ploadbalancer_core_App_Production =  "LoadbalancerCoreAppProduction" #"priyankalbp"
ppip_infrastructure_core_app_production =  "PipInfraCoreAppProd" #"priyankalbpipp"
allocation_method_plb = "Static"
psku1 = "Standard"
front_ip_name = "PublicIPAddress"
backend_addpool_name = "plbbackendpool"
rule_name = "LBRule"
protocol_name = "Tcp"
front_port_number = 3389
back_port_number = 3389
prob_name = "plbprobe"
prob_name_protocol = "Tcp"
prob_port_number = 80

#nic_iteration

name_network_interfaces_it =  "NicitInfrastructureCoreappProd" #"priyankanicit"
ip_configuration_name_it = "IpconfigitnameInfrastructureCoreappProd" #"priyankaipit"
networkingpip_infrastructure_core_app_production_it = "NicitipInfrastructureCoreappProd" #"priyankapublicipit" 
name_virtual_network002it = "Virtualnetwork002InfraitCoreappProd" #"priyankanetwork002it" 
address_space_virtual_network002it = ["11.0.0.0/16"]
name_subnetit =  "SubnetInfraitCoreappProd" #"priyankasubnetit"
address_prefix_subnetit =  ["11.0.3.0/24"]
private_ip_address_allocation_networkinterfacesit = "Dynamic"
countit = 10

#keyvault secret

keyvaults_secret_security_app_production = "kvsecapprod"
sku_family_secret = "A"
key_vault_secret_name = "kvsecret"
key_vault_secret_value = "supersecretvalue"
sku_name_keyvault_secret = "standard"
*/
