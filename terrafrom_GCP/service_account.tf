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

resource "google_service_account" "k8s-sa" {
  account_id   = "k8s-sa"
  display_name = "k8s-sa"
}

resource "google_project_iam_binding" "k8s-sa-binding" {
  project = omar-mohamed-el-sayed-project
  role    = "roles/storage.admin" # Full access to storage
  members = [
    "serviceAccount:${google_service_account.k8s-sa.email}"
  ]
}
