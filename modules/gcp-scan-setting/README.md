# RISKEN Google Cloud Scan Setting

This module creates the Google Cloud Scan Setting for RISKEN scanning.

## Usage

First, you need to import the existing `google_project` resource to set the project label.
(this import feature requires version terraform v1.15 or later.)

You can use this module to create RISKEN's GCP scan configuration resources.

```hcl
module "gcp_scan_setting" {
  source = "github.com/ca-risken/terraform-module/modules/gcp-scan-setting"

  google_cloud_project_id   = "your-project-id-here"
  google_cloud_project_name = "your-project-name-here"
  risken_service_account    = "risken@risken-project-id.iam.gserviceaccount.com"
  risken_verification_code  = "your-verification-code-here"
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
| [google_project.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project) | resource |
| [google_project_iam_custom_role.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |
| [google_project_iam_member.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_google_cloud_project_id"></a> [google\_cloud\_project\_id](#input\_google\_cloud\_project\_id) | Your Google Cloud Project ID | `string` | n/a | yes |
| <a name="input_google_cloud_project_name"></a> [google\_cloud\_project\_name](#input\_google\_cloud\_project\_name) | Your Google Cloud Project Name | `string` | n/a | yes |
| <a name="input_risken_custom_role_name"></a> [risken\_custom\_role\_name](#input\_risken\_custom\_role\_name) | Custom role name of RISKEN | `string` | `"RISKEN"` | no |
| <a name="input_risken_service_account"></a> [risken\_service\_account](#input\_risken\_service\_account) | ServiceAccount of RISKEN | `string` | n/a | yes |
| <a name="input_risken_verification_code"></a> [risken\_verification\_code](#input\_risken\_verification\_code) | Verification code of RISKEN | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
