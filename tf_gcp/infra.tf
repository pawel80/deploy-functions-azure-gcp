# In GCP there are no RG, resources are places in Projects
# resource "google_compute_network" "vpc_network" {
#   name = "terraform-network"
# }

resource "random_id" "id" {
  byte_length = 4
}

# resource "google_storage_bucket" "storage_bucket" {
#   # Every bucket name must be globally unique
#   name                        = "tf${var.resource_prefix}bucket${random_id.id.hex}"
#   location                    = "${var.GOOGLE_REGION}"
#   uniform_bucket_level_access = true
# }

# data "archive_file" "arch_file" {
#   type        = "zip"
#   source_dir  = "${var.app_path}"
#   output_path = "/tmp/function-source.zip"
# }

# resource "google_storage_bucket_object" "bucket_object" {
#   name   = "function-source.zip"
#   bucket = google_storage_bucket.storage_bucket.name
#   # Add path to the zipped function source code
#   source = data.archive_file.arch_file.output_path
# }

# resource "google_cloudfunctions2_function" "gcp_func" {
#   name = "tf-${var.resource_prefix}-func-app"
#   location = "${var.GOOGLE_REGION}"
#   description = "GCP Function"

#   build_config {
#     runtime = "nodejs16"
#     entry_point = "helloHttp"  # Set the entry point 
#     source {
#       storage_source {
#         bucket = google_storage_bucket.storage_bucket.name
#         object = google_storage_bucket_object.bucket_object.name
#       }
#     }
#   }

#   service_config {
#     max_instance_count  = 1
#     available_memory    = "256M"
#     timeout_seconds     = 60
#   }
# }

# output "function_uri" { 
#   value = google_cloudfunctions2_function.gcp_func.service_config[0].uri
# }