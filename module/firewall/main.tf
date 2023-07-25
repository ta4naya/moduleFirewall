# resource "azurerm_marketplace_agreement" "cisco" {
# publisher = "cisco"
#  offer     = "cisco-asav"
#  plan      = "asav-azure-byol"
# }
resource "azurerm_template_deployment" "firewall" {
  for_each            = var.fw_instances
  name                = each.key
  resource_group_name = each.value.rg


  deployment_mode = "Incremental"
  template_body   = file("./module/firewall/fwtemlate.json", )
  parameters = {
    adminUsername       = var.adminUsername
    adminPassword       = var.adminPassword
    availSetName        = each.value.availSetName
    diskName            = each.value.diskName
    managedDisk         = each.value.managedDisk
    nicName             = each.value.nicName
    nicName1            = each.value.nicName1
    publicIPAddressName = each.value.publicIPAddressName
    publicIPDnsName     = each.value.publicIPDnsName
    Subnet1Name         = each.value.Subnet1Name
    Subnet2Name         = each.value.Subnet2Name
    Subnet3IP           = each.value.Subnet3IP
    Subnet2IP           = each.value.Subnet2IP
    Subnet1IP           = each.value.Subnet1IP
    virtualNetworkName  = each.value.virtualNetworkName
    vmSize              = each.value.vmSize
    vmName              = each.value.vmName
  }
  depends_on = [

  ]
}
