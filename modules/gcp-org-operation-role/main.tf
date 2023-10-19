terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0.0"
    }
  }
}

resource "google_organization_iam_member" "ope" {
  org_id = var.org_id
  role   = google_organization_iam_custom_role.ope.name
  member = "group:${var.risken_operator_group}"

  depends_on = [
    google_organization_iam_custom_role.ope
  ]
}

resource "google_organization_iam_custom_role" "ope" {
  role_id     = title(replace(var.risken_operator_role_name, "-", ""))
  org_id      = var.org_id
  title       = var.risken_operator_role_name
  description = "RISKEN custom role."
  stage       = "GA"
  permissions = [
    "resourcemanager.projects.update",
    "resourcemanager.projects.get",
  ]
}
