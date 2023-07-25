
output "azurerm_virtual_network_name" {
  value = azurerm_virtual_network.sycornet.name
}
output "azurerm_virtual_network_id" {
  value = azurerm_virtual_network.sycornet.id
}

output "azurerm_subnet_public" {
  value = azurerm_subnet.public.name
}
output "azurerm_subnet_private" {
  value =  azurerm_subnet.private.name
}
output "azurerm_subnet_public_cidr" {
  value = azurerm_subnet.public.address_prefixes
}

output "azurerm_subnet_private_cidr" {
  value = azurerm_subnet.private.address_prefixes
}
