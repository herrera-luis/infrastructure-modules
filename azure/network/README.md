<!-- BEGIN_TF_DOCS -->
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
| [azurerm_subnet.private_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_subnet.public_subnet](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_space"></a> [address\_space](#input\_address\_space) | assign cidr block to the virtual network | `string` | `"172.24.0.0/16"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | network environment | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | region | `string` | n/a | yes |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | assign a cidr block to the private subnet or use the default | `string` | `"172.24.1.0/24"` | no |
| <a name="input_private_subnet_delegation_name"></a> [private\_subnet\_delegation\_name](#input\_private\_subnet\_delegation\_name) | The name of the delegation | `string` | `""` | no |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | private subnet name | `string` | `"corp_private_subnet"` | no |
| <a name="input_private_subnet_service_delegation_actions"></a> [private\_subnet\_service\_delegation\_actions](#input\_private\_subnet\_service\_delegation\_actions) | The actions of the service delegation | `list(string)` | `[]` | no |
| <a name="input_private_subnet_service_delegation_name"></a> [private\_subnet\_service\_delegation\_name](#input\_private\_subnet\_service\_delegation\_name) | The name of the service delegation | `string` | `""` | no |
| <a name="input_private_subnet_service_endpoints"></a> [private\_subnet\_service\_endpoints](#input\_private\_subnet\_service\_endpoints) | The list of service endpoints to be added to the subnet | `list(string)` | `[]` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | assign a cidr block to the public subnet or use the default | `string` | `"172.24.2.0/24"` | no |
| <a name="input_public_subnet_delegation_name"></a> [public\_subnet\_delegation\_name](#input\_public\_subnet\_delegation\_name) | The name of the delegation | `string` | `""` | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | public subnet name | `string` | `"corp_public_subnet"` | no |
| <a name="input_public_subnet_service_delegation_actions"></a> [public\_subnet\_service\_delegation\_actions](#input\_public\_subnet\_service\_delegation\_actions) | The actions of the service delegation | `list(string)` | `[]` | no |
| <a name="input_public_subnet_service_delegation_name"></a> [public\_subnet\_service\_delegation\_name](#input\_public\_subnet\_service\_delegation\_name) | The name of the service delegation | `string` | `""` | no |
| <a name="input_public_subnet_service_endpoints"></a> [public\_subnet\_service\_endpoints](#input\_public\_subnet\_service\_endpoints) | The list of service endpoints to be added to the subnet | `list(string)` | `[]` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | resource group name | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map(string)` | n/a | yes |
| <a name="input_vnet_name"></a> [vnet\_name](#input\_vnet\_name) | the name to be assigned to the VNET | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | private subnet id |
| <a name="output_private_subnet_name"></a> [private\_subnet\_name](#output\_private\_subnet\_name) | private subnet name |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | public subnet id |
| <a name="output_public_subnet_name"></a> [public\_subnet\_name](#output\_public\_subnet\_name) | public subnet name |
| <a name="output_virtual_network_name"></a> [virtual\_network\_name](#output\_virtual\_network\_name) | vnet name |
<!-- END_TF_DOCS -->