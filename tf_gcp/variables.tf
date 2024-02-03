variable "GCP_CREDENTIALS" {
  description = "GCP credentials"
  type    = string
  default = ""
}

variable "GCP_PROJECT_ID" {
  description = "GCP project id"
  type    = string
  default = ""
}

# In GCP there are no RG, resources are places in Projects
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
