

#creating private cluster ans associate it to restricted subnet
resource "google_container_cluster" "my-cluster" {
  name     = "my-cluster"
  location = "us-central1-a"
  # creating the least possible node pool  
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.myvpc.id
  subnetwork               = google_compute_subnetwork.restricted.id


  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.0.1.0/24"
      display_name = "managment-cidr-range"
    }
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.10.0.0/16"
    services_ipv4_cidr_block = "10.20.0.0/16"
  }


  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = "172.16.0.0/28"
  }

}

