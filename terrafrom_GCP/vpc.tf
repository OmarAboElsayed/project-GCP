resource "google_compute_network" "myvpc" {
  project                 = "omar-mohamed-el-sayed-project"
  name                    = "myvpc"
  auto_create_subnetworks = false
 
}
