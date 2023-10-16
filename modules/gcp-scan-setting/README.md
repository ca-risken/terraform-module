# RISKEN Google Cloud Scan Setting

This module creates the Google Cloud Scan Setting for RISKEN scanning.

## Usage

First, you need to import the existing `google_project` resource to set the project label.
(this import feature requires version terraform v1.15 or later.)

You can use this module to create RISKEN's GCP scan configuration resources.

```hcl
// import google_project
import {
  id = "your-project-id-here"
  to = google_project.project
}

resource "google_project" "project" {
  project_id = "your-project-id-here"
  name       = "your-project-name-here"

  labels = {
    "risken" = "your-verification-code-here",
  }

  lifecycle {
    ignore_changes = [
      timeouts,
      billing_account,
      auto_create_network,
    ]
  }
}

module "gcp_scan_setting" {
  source = "github.com/ca-risken/terraform-module/modules/gcp-scan-setting"

  google_cloud_project_id = "your-project-id-here"
  risken_service_account  = "risken@risken-project-id.iam.gserviceaccount.com"
}
```

<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

| Name                                                      | Version |
| --------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider_google) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                            | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_project_iam_custom_role.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_custom_role) | resource |
| [google_project_iam_member.risken](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member)           | resource |

## Inputs

| Name                                                                                                   | Description                  | Type     | Default    | Required |
| ------------------------------------------------------------------------------------------------------ | ---------------------------- | -------- | ---------- | :------: |
| <a name="input_google_cloud_project_id"></a> [google_cloud_project_id](#input_google_cloud_project_id) | Your Google Cloud Project ID | `string` | n/a        |   yes    |
| <a name="input_risken_custom_role_name"></a> [risken_custom_role_name](#input_risken_custom_role_name) | Custom role name of RISKEN   | `string` | `"RISKEN"` |    no    |
| <a name="input_risken_service_account"></a> [risken_service_account](#input_risken_service_account)    | ServiceAccount of RISKEN     | `string` | n/a        |   yes    |

## Outputs

No outputs.

<!-- END_TF_DOCS -->
