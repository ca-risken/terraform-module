variable "org_id" {
  type        = string
  description = "Your Organization ID"
  nullable    = false
}

variable "risken_custom_role_name" {
  type        = string
  description = "Custom role name of RISKEN"
  default     = "RISKEN"
}

variable "risken_service_account" {
  type        = string
  description = "ServiceAccount of RISKEN"
  nullable    = false
}
