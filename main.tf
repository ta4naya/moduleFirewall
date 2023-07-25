data "azurerm_resource_group" "ta4naya" {
  name = var.resource_group
}
provider azurerm { 
    
  features {}  
  client_id = "0cb4136a-9d1a-4279-a26a-c858be76ff68"
  client_secret ="wnv8Q~VbwHu24bUw1yE7~Sa2HW2RTYt8c0Nd-com"      
  tenant_id = "c36f15bc-e241-410e-ae73-2880bf88ef78"
  subscription_id = "c2235f65-2f4e-406b-b960-35a0bced9841"

  

}
   


# Define S3 module
module "publicip" {
  source                      = "./module/publicip"
  name         = var.public_ip_name
  resource_group_name = data.azurerm_resource_group.ta4naya.name
  sku             = "Basic"
  allocation_method ="Dynamic"
}
module "network" {
    source     = "./module/network"
    vnet     = var.vnetname
    location = "West Europe"
    resourcegroup = data.azurerm_resource_group.ta4naya.name
    cidr_virtual_network = var.cidr_virtual_network 
    subnet_pubname = var.subnet_pubname
    subnet_priname = var.subnet_priname
    cidr_subnet_public = var.cidr_subnet_public
    cidr_subnet_private = var.cidr_subnet_private

 }

 module "firewall" {
    source = "./module/firewall"
    fw_instances = {
         "ASAVM" = {
           availSetName = "AVSCHSBHGWC0001"
           diskName = "FGWCSCSCHUB0001-disk1"
           managedDisk = "Standard_LRS"
           nicName = "NIC1-FGWCSCSCHUB0001"
           nicName1 = "NIC2-FGWCSCSCHUB0001"
           publicIPAddressName = module.publicip.name
           Subnet1Name = module.network.azurerm_subnet_public
           Subnet2Name = module.network.azurerm_subnet_private
           Subnet1IP = "100.80.0.68"
           Subnet2IP = "100.80.0.69"
           Subnet3IP = "100.80.0.5"
           virtualNetworkName = module.network.azurerm_virtual_network_name
           vmSize = "Standard_DS3_v2"
           vmName = "FGWCSCSHUB001"
           publicIPDnsName = module.publicip.domain_name_label
           rg = var.resource_group
         }
        }
        
    adminUsername = var.adminUsername
    adminPassword = var.adminPassword
 }