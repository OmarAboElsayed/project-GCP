resource "google_compute_subnetwork" "management" {
  name          = "management"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.myvpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "restricted" {
  name          = "restricted"
   region= "us-central1"
   ip_cidr_range        = "10.0.2.0/24"
  network       = google_compute_network.myvpc.id
  private_ip_google_access = true
}