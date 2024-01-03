# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating virtual_machine_scale_set to deploy it in the azure portal.

resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"

 
name_network_interfaces =  "NetworkinterfacesInfrastructureCoreappProd" #"priyankanic"

 
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
 