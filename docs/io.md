## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attributes | Additional attributes (e.g. `1`). | `list(any)` | `[]` | no |
| description | Description of IAM Role. | `string` | `"The role to grant permissions to this account to delegated IAM users in the master account."` | no |
| enabled | Enabled to create module or not. | `bool` | `true` | no |
| environment | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| force\_detach\_policies | (Optional) Specifies to force detaching any policies the role has before destroying it. Defaults to false | `bool` | `false` | no |
| label\_order | Label order, e.g. `name`,`application`. | `list(any)` | `[]` | no |
| managedby | ManagedBy, eg 'CloudDrove' or 'AnmolNagpal'. | `string` | `"anmol@clouddrove.com"` | no |
| master\_account\_user | The ID of the master account to Read Only Access the current account. | `string` | n/a | yes |
| max\_session\_duration | - (Optional) The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours. | `string` | `"3600"` | no |
| name | Name  (e.g. `app` or `cluster`). | `string` | `""` | no |
| policy | Policy ARN to attach to the role. By default it attaches `AdministratorAccess` managed policy to grant full access to AWS services and resources in the current account. | `string` | `""` | no |
| policy\_arn | Policy ARN to attach to the role. By default it attaches `AdministratorAccess` managed policy to grant full access to AWS services and resources in the current account. | `list(string)` | `[]` | no |
| policy\_enabled | Enabled to create module or not. | `bool` | `false` | no |
| repository | Terraform current module repo | `string` | `"https://github.com/clouddrove/terraform-aws-cross-account-role"` | no |
| tags | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| role\_arn | The Amazon Resource Name (ARN) specifying the role. |
| role\_id | The stable and unique string identifying the role. |
| role\_name | The name of the crated role. |
| tags | A mapping of tags to assign to the resource. |

