# Operation Team Role

RISKEN の設定作業を Org 横断で実施するチームに割り当てるロールです。

## Usage

```hcl
module "gcp_org_operation_role" {
  source = "github.com/ca-risken/terraform-module/modules/gcp-org-operation-role"

  org_id                = "ORGANIZATION_ID"
  risken_operator_group = "運用チームのGoogleGroupメールアドレス"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_organization_iam_custom_role.ope](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_custom_role) | resource |
| [google_organization_iam_member.ope](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Your Organization ID | `string` | n/a | yes |
| <a name="input_risken_operator_group"></a> [risken\_operator\_group](#input\_risken\_operator\_group) | GoogleGroup of Operation Team | `string` | n/a | yes |
| <a name="input_risken_operator_role_name"></a> [risken\_operator\_role\_name](#input\_risken\_operator\_role\_name) | Role name of Operation Team | `string` | `"RISKEN-OPE"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->