# moduleFirewall

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
README.md updated successfully
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_firewall"></a> [firewall](#module\_firewall) | ./module/firewall | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./module/network | n/a |
| <a name="module_publicip"></a> [publicip](#module\_publicip) | ./module/publicip | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.ta4naya](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adminPassword"></a> [adminPassword](#input\_adminPassword) | Admin user name | `string` | `"Star1234567890#"` | no |
| <a name="input_adminUsername"></a> [adminUsername](#input\_adminUsername) | Admin user name | `string` | `"sy-admin"` | no |
| <a name="input_cidr_subnet_private"></a> [cidr\_subnet\_private](#input\_cidr\_subnet\_private) | Private subnet name | `list(string)` | <pre>[<br>  "100.80.0.0/26"<br>]</pre> | no |
| <a name="input_cidr_subnet_public"></a> [cidr\_subnet\_public](#input\_cidr\_subnet\_public) | Public subnet name | `list(string)` | <pre>[<br>  "100.80.0.64/26"<br>]</pre> | no |
| <a name="input_cidr_virtual_network"></a> [cidr\_virtual\_network](#input\_cidr\_virtual\_network) | (Required) Virtual network | `list(string)` | <pre>[<br>  "100.80.0.0/24"<br>]</pre> | no |
| <a name="input_public_ip_name"></a> [public\_ip\_name](#input\_public\_ip\_name) | PIPNAME | `string` | `"PIP-FGWCSCSHUB0001NIC2-001"` | no |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | (Required) The name of the resource group in which to create the public ip. | `string` | `"ta4nayaRG"` | no |
| <a name="input_subnet_priname"></a> [subnet\_priname](#input\_subnet\_priname) | Public subnet name | `string` | `"gwcschubsbhvnet001-sub001"` | no |
| <a name="input_subnet_pubname"></a> [subnet\_pubname](#input\_subnet\_pubname) | Public subnet name | `string` | `"gwcschubsbhvnet001-sub002"` | no |
| <a name="input_vnetname"></a> [vnetname](#input\_vnetname) | The name of the VNEt | `string` | `"gwcschubsbhvnet001"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
