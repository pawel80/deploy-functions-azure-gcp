# variable "GOOGLE_CREDENTIALS" {
#   description = "GCP credentials"
#   type    = string
#   default = ""
# }

variable "GOOGLE_PROJECT_ID" {
  description = "GCP project id"
  type    = string
  default = ""
}

variable "gcp_region" {
  description = "Google Cloud region"
  type    = string
  default = "europe-central2"
}
