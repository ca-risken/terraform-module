variable "google_cloud_project_id" {
  type        = string
  description = "Your Google Cloud Project ID"
  nullable    = false
}

variable "risken_service_account" {
  type        = string
  description = "ServiceAccount of RISKEN"
  nullable    = false
}

variable "risken_custom_role_name" {
  type        = string
  description = "Custom role name of RISKEN"
  default     = "RISKEN"
}
