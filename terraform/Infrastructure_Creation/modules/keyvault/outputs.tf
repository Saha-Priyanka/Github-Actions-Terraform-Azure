# Author : Priyanka Saha
# Date : 28-11-2023
# Purpose : We are creating key_vault to deploy it in the azure portal.

output "key_vault_id" {
value = azurerm_key_vault.key_vault.id
}

output "key_vault_uri" {
  value = azurerm_key_vault.key_vault.vault_uri
}
output "key_vault_tenant_id" {
  value = azurerm_key_vault.key_vault.tenant_id
}
output "secret_value" {
  value     = azurerm_key_vault_secret.key_vault_secret.value
  sensitive = true
}