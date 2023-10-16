# Service Account Role

RISKEN のサービスアカウントを Org の IAM に設定します。

## Usage

```hcl
module "gcp_org_service_account_role" {
  source = "github.com/ca-risken/terraform-module/modules/gcp-org-service-account-role"

  org_id                 = "ORGANIZATION_ID"
  risken_service_account = "RISKENのサービスアカウントのEメールアドレス"
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
| [google_organization_iam_custom_role.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_custom_role) | resource |
| [google_organization_iam_member.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Your Organization ID | `string` | n/a | yes |
| <a name="input_risken_custom_role_name"></a> [risken\_custom\_role\_name](#input\_risken\_custom\_role\_name) | Custom role name of RISKEN | `string` | `"RISKEN"` | no |
| <a name="input_risken_service_account"></a> [risken\_service\_account](#input\_risken\_service\_account) | ServiceAccount of RISKEN | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->