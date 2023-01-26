resource "google_service_account" "node-service-account" {
  account_id = "node-service-account"
  project = "omar-mohamed-el-sayed-project"
}

resource "google_project_iam_binding" "node-service-account-iam" {
  project = "omar-mohamed-el-sayed-project"
  role    = "roles/storage.admin"
  members = [
    "serviceAccount:${google_service_account.node-service-account.email}"
  ]
}


