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

resource "google_service_account" "k8s-service" {
  account_id   = "k8s-service"
  display_name = "k8s-service"
}

resource "google_project_iam_binding" "k8s-service-binding" {
  project = "omar-mohamed-el-sayed-project"
  role    = "roles/storage.admin" # Full access to storage
  members = [
    "serviceAccount:${google_service_account.k8s-service.email}"
  ]
}
