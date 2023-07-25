variable "resource_group" {
  description = "(Required) The name of the resource group in which to create the public ip."
  type        = string
  default     = "ta4nayaRG"
}

variable "cidr_virtual_network" {
  description = "(Required) Virtual network"
  type        = list(string)
  default     = ["100.80.0.0/24"]
}
variable "cidr_subnet_public" {
  description = "Public subnet name"
  type        = list(string)
  default     = ["100.80.0.64/26"]
}
variable "cidr_subnet_private" {
  description = "Private subnet name"
  type        = list(string)
  default     = ["100.80.0.0/26"]
}
variable "public_ip_name" {
  description = "PIPNAME    "
  type        = string
  default     = "PIP-FGWCSCSHUB0001NIC2-001"
}
variable "subnet_pubname" {
  description = "Public subnet name"
  type        = string
  default     = "gwcschubsbhvnet001-sub002"
}
variable "subnet_priname" {
  description = "Public subnet name"
  type        = string
  default     = "gwcschubsbhvnet001-sub001"
}

variable "adminUsername" {
  description = "Admin user name"
  type        = string
  default     = "sy-admin"
}
variable "adminPassword" {
  description = "Admin user name"
  type        = string
  default     = "Star1234567890#"
}
variable "vnetname" {
  description = "The name of the VNEt"
  type        = string
  default     = "gwcschubsbhvnet001"
}
