
resource "google_compute_firewall" "iap" {
  name    = "iap"
  network = google_compute_network.myvpc.name

  allow {
    protocol = "tcp"
    ports    = ["80","22"]
  }

  direction     = "INGRESS"
  source_ranges = ["35.235.240.0/20"]
}
