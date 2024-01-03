# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating eventhub_namespace to deploy it in the azure portal.

resource_group_name = "ETPXCCDEV-RG"
location = "westeurope"

sku1 = "Standard"
capacity = 1
eventhub_namespaces_data_processing_dev =  "EventhubnamespacesDataprocessingDev" #"priyankanamespaces"

