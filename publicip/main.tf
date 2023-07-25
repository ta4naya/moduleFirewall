data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}

resource "azurerm_public_ip" "public_ip" {
  name                = var.name
  resource_group_name = data.azurerm_resource_group.resource_group.name
  location            = data.azurerm_resource_group.resource_group.location
  allocation_method   = var.allocation_method
  sku                 = var.sku
  ip_version          = var.ip_version
  domain_name_label   = var.domain_name_label == "" ? null : var.domain_name_label

  tags = var.tags
}