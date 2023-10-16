variable "org_id" {
  type        = string
  description = "Your Organization ID"
  nullable    = false
}

variable "risken_operator_role_name" {
  type        = string
  description = "Role name of Operation Team"
  default     = "RISKEN-OPE"
}

variable "risken_operator_group" {
  type        = string
  description = "GoogleGroup of Operation Team"
  nullable    = false
}
