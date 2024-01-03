# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating network_interface to deploy it in the azure portal.

resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"
name_network_interfaces =  "NetworkinterfacesInfrastructureCoreappProd" #"priyankanic"
ip_configuration_name =  "IpconfigurationnameInfrastructureCoreappProd" #"priyankaip"
networkingpip_infrastructure_core_app_production = "NetworkingpipInfrastructureCoreappProd" #"priyankapublicip" 
name_virtual_network002 = "Virtualnetwork002InfrastructureCoreappProd" #"priyankanetwork002" 
address_space_virtual_network002 = ["11.0.0.0/16"]
name_subnet =  "SubnetInfrastructureCoreappProd" #"priyankasubnet"
address_prefix_subnet =  ["11.0.3.0/24"]
private_ip_address_allocation_networkinterfaces = "Dynamic"
countit = 10
nic_base_name = "networkic"