variable "google_cloud_project_id" {
  type        = string
  description = "Your Google Cloud Project ID"
  default     = "your-project-id"
}

variable "google_cloud_project_name" {
  type        = string
  description = "Your Google Cloud Project Name"
  default     = "your-project-name"
}

variable "risken_service_account" {
  type        = string
  description = "ServiceAccount of RISKEN"
  default     = "risken@risken-project.iam.gserviceaccount.com"
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
}
