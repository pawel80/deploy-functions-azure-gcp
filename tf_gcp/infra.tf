# In GCP there are no RG, resources are places in Projects
resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "random_id" "id" {
  byte_length = 4
}

resource "google_storage_bucket" "bucket" {
  name                        = "tf${var.resource_prefix}bucket${random_id.id.hex}" # Every bucket name must be globally unique
  location                    = "PL"
  uniform_bucket_level_access = true
}

