variable "adminUsername" {
  type = string
  sensitive = true
}

variable "adminPassword" {
  type = string
  sensitive = true
}


variable "fw_instances" {
  type = map(object({
    availSetName = string
    diskName = string
    managedDisk = string
    nicName = string
    nicName1 = string
    publicIPAddressName = string
    publicIPDnsName = string
    rg = string
    Subnet1Name = string
    Subnet2Name = string
    Subnet1IP = string
    Subnet2IP = string
    Subnet3IP = string
    virtualNetworkName = string
    vmSize = string
    vmName = string
  }))

 
}
