# firewall

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
| [azurerm_template_deployment.firewall](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/template_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_adminPassword"></a> [adminPassword](#input\_adminPassword) | n/a | `string` | n/a | yes |
| <a name="input_adminUsername"></a> [adminUsername](#input\_adminUsername) | n/a | `string` | n/a | yes |
| <a name="input_fw_instances"></a> [fw\_instances](#input\_fw\_instances) | n/a | <pre>map(object({<br>    availSetName        = string<br>    diskName            = string<br>    managedDisk         = string<br>    nicName             = string<br>    nicName1            = string<br>    publicIPAddressName = string<br>    publicIPDnsName     = string<br>    rg                  = string<br>    Subnet1Name         = string<br>    Subnet2Name         = string<br>    Subnet1IP           = string<br>    Subnet2IP           = string<br>    Subnet3IP           = string<br>    virtualNetworkName  = string<br>    vmSize              = string<br>    vmName              = string<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
