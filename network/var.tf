variable "cidr_virtual_network" {
  type        = list(string)
  description = "Virtual network CIDR block"
}

variable "resourcegroup" {
  type        = string
  description = "ARN of S3 bucket storing the VPC flow logs"
}

variable "subnet_pubname" {
  type        = string
  description = "Public subnet CIDR block (euc1a)"
}
variable "subnet_priname" {
  type        = string
  description = "Public subnet CIDR block (euc1a)"
}

variable "cidr_subnet_public" {
  type        = list(string)
  description = "Public subnet CIDR block (euc1b)"
}

variable "cidr_subnet_private" {
  type        = list(string)
  description = "Private subnet CIDR block (euc1a)"
}
variable "location" {
  type        = string
  description = "VNET location"
}
variable "vnet"{
      type        = string
  description = "VNET naame"
}
