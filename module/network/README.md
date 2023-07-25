# network

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_subnet.private](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.public](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.sycornet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.sycorrg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_subnet_private"></a> [cidr\_subnet\_private](#input\_cidr\_subnet\_private) | Private subnet CIDR block (euc1a) | `list(string)` | n/a | yes |
| <a name="input_cidr_subnet_public"></a> [cidr\_subnet\_public](#input\_cidr\_subnet\_public) | Public subnet CIDR block (euc1b) | `list(string)` | n/a | yes |
| <a name="input_cidr_virtual_network"></a> [cidr\_virtual\_network](#input\_cidr\_virtual\_network) | Virtual network CIDR block | `list(string)` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | VNET location | `string` | n/a | yes |
| <a name="input_resourcegroup"></a> [resourcegroup](#input\_resourcegroup) | ARN of S3 bucket storing the VPC flow logs | `string` | n/a | yes |
| <a name="input_subnet_priname"></a> [subnet\_priname](#input\_subnet\_priname) | Public subnet CIDR block (euc1a) | `string` | n/a | yes |
| <a name="input_subnet_pubname"></a> [subnet\_pubname](#input\_subnet\_pubname) | Public subnet CIDR block (euc1a) | `string` | n/a | yes |
| <a name="input_vnet"></a> [vnet](#input\_vnet) | VNET naame | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azurerm_subnet_private"></a> [azurerm\_subnet\_private](#output\_azurerm\_subnet\_private) | n/a |
| <a name="output_azurerm_subnet_private_cidr"></a> [azurerm\_subnet\_private\_cidr](#output\_azurerm\_subnet\_private\_cidr) | n/a |
| <a name="output_azurerm_subnet_public"></a> [azurerm\_subnet\_public](#output\_azurerm\_subnet\_public) | n/a |
| <a name="output_azurerm_subnet_public_cidr"></a> [azurerm\_subnet\_public\_cidr](#output\_azurerm\_subnet\_public\_cidr) | n/a |
| <a name="output_azurerm_virtual_network_id"></a> [azurerm\_virtual\_network\_id](#output\_azurerm\_virtual\_network\_id) | n/a |
| <a name="output_azurerm_virtual_network_name"></a> [azurerm\_virtual\_network\_name](#output\_azurerm\_virtual\_network\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
