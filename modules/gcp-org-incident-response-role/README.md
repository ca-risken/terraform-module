# GCP Incident Response Role

RISKEN で検知したセキュリティの問題を Org 横断で調査、対応するチームに割り当てるロールです。

## Usage

```hcl
module "gcp_org_incident_response_role" {
  source = "github.com/ca-risken/terraform-module/modules/gcp-org-incident-response-role"

  org_id          = "ORGANIZATION_ID"
  risken_ir_group = "IRチームのGoogleGroupメールアドレス"
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
| [google_organization_iam_member.ir_scc](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.ir_viewer](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Your Organization ID | `string` | n/a | yes |
| <a name="input_risken_ir_group"></a> [risken\_ir\_group](#input\_risken\_ir\_group) | GoogleGroup of Incident Response Team | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->