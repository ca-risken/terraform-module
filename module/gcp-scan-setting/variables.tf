variable "google_cloud_project_id" {
  type        = string
  description = "Your Google Cloud Project ID"
  default     = "your-project-id"
  nullable    = false
}

variable "google_cloud_project_name" {
  type        = string
  description = "Your Google Cloud Project Name"
  default     = "your-project-name"
  nullable    = false
}

variable "risken_service_account" {
  type        = string
  description = "ServiceAccount of RISKEN"
  default     = "risken@risken-project.iam.gserviceaccount.com"
  nullable    = false
}

variable "risken_custom_role_name" {
  type        = string
  description = "Custom role name of RISKEN"
  default     = "RISKEN"
}

variable "risken_verification_code" {
  type        = string
  description = "Verification code of RISKEN"
  default     = "xxxxxxxxx"
  nullable    = false
}
