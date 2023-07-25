
data "azurerm_resource_group" "sycorrg" {
  name     = var.resourcegroup
 
}

resource "azurerm_virtual_network" "sycornet" {
  name                = var.vnet
  location =  var.location
  resource_group_name = data.azurerm_resource_group.sycorrg.name
  address_space       = var.cidr_virtual_network
}

resource "azurerm_subnet" "public" {
  name                 = var.subnet_pubname
  resource_group_name  = data.azurerm_resource_group.sycorrg.name
  virtual_network_name = azurerm_virtual_network.sycornet.name
  address_prefixes      = var.cidr_subnet_public
}

resource "azurerm_subnet" "private" {
  name                 = var.subnet_priname
  resource_group_name  = data.azurerm_resource_group.sycorrg.name
  virtual_network_name = azurerm_virtual_network.sycornet.name
  address_prefixes       = var.cidr_subnet_private
}