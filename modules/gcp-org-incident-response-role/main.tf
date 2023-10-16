resource "google_organization_iam_member" "ir_viewer" {
  org_id = var.org_id
  role   = "roles/viewer"
  member = "group:${var.risken_ir_group}"
}

resource "google_organization_iam_member" "ir_scc" {
  org_id = var.org_id
  role   = "roles/securitycenter.admin"
  member = "group:${var.risken_ir_group}"
}
