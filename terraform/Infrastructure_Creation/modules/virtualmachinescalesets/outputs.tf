# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating virtual_machine_scale_set to deploy it in the azure portal.

output "vmss_id" {
  description = "The ID of the created Azure Virtual Machine Scale Set"
value = azurerm_linux_virtual_machine_scale_set.linux_virtual_machine_scale_set.id
}
