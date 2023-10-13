variable "risken_role_name" {
  type        = string
  description = "Role name of RISKEN"
  default     = "RISKEN"
}

variable "risken_policy_name" {
  type        = string
  description = "Policy name of RISKEN"
  default     = "RISKEN"
}

variable "risken_aws_arn" {
  type        = string
  description = "Principal arn of RISKEN AWS account"
  default     = "arn:aws:iam::123456789012:root"
}

variable "risken_external_id" {
  type        = string
  description = "External ID for AssumeRole from RISKEN"
  default     = "EXTERNAL_ID"
}
