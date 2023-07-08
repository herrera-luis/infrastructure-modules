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
| [azurerm_storage_account.storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_blob.blob_storage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_blob) | resource |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_storage_account.storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) | data source |
| [azurerm_storage_container.container](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_container) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azurerm_storage_account_name"></a> [azurerm\_storage\_account\_name](#input\_azurerm\_storage\_account\_name) | Name of the Azore Storage Account | `string` | n/a | yes |
| <a name="input_azurerm_storage_blob_name"></a> [azurerm\_storage\_blob\_name](#input\_azurerm\_storage\_blob\_name) | Name of the Azure's Blob | `string` | n/a | yes |
| <a name="input_azurerm_storage_container_name"></a> [azurerm\_storage\_container\_name](#input\_azurerm\_storage\_container\_name) | Name of the container of Azure | `string` | n/a | yes |
| <a name="input_create_storage_account"></a> [create\_storage\_account](#input\_create\_storage\_account) | Flag to create Storage account | `bool` | `true` | no |
| <a name="input_create_storage_container"></a> [create\_storage\_container](#input\_create\_storage\_container) | Flag to create Azure Container | `bool` | `true` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure location where the resources exist. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Name of the resource group name on Azure | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blob_url"></a> [blob\_url](#output\_blob\_url) | Url assigned to Blob's |
| <a name="output_container_name"></a> [container\_name](#output\_container\_name) | Container's  Name |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Resource group Name |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | Storage Account Name |
<!-- END_TF_DOCS -->