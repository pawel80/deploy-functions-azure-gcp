# In GCP there are no RG, resources are places in Projects
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
