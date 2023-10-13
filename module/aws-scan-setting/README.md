# RISKEN AWS Scan Setting

This module creates the AWS Scan Setting for RISKEN scanning.

## Usage

You can use this module to create RISKEN's AWS scan configuration resources.

```hcl
module "aws_scan_setting" {
  source = "github.com/risken/terraform-modules//module/aws-scan-setting"

  risken_aws_arn     = "arn:aws:iam::123456789012:root"
  risken_external_id = "your-external-id-here"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.risken_additional_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.risken](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.risken_additional_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.security_audit](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.risken](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.risken_additional_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_risken_aws_arn"></a> [risken\_aws\_arn](#input\_risken\_aws\_arn) | Principal arn of RISKEN AWS account | `string` | n/a | yes |
| <a name="input_risken_external_id"></a> [risken\_external\_id](#input\_risken\_external\_id) | External ID for AssumeRole from RISKEN | `string` | n/a | yes |
| <a name="input_risken_policy_name"></a> [risken\_policy\_name](#input\_risken\_policy\_name) | Policy name of RISKEN | `string` | `"RISKEN"` | no |
| <a name="input_risken_role_name"></a> [risken\_role\_name](#input\_risken\_role\_name) | Role name of RISKEN | `string` | `"RISKEN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | ARN of the RISKEN IAM Role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Name of the RISKEN IAM Role |
<!-- END_TF_DOCS -->
