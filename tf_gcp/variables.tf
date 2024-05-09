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

variable "GOOGLE_REGION" {
  description = "Google Cloud region"
  type    = string
  default = ""
}

variable "resource_prefix" {
  description = "Resource prefix"
  type = string
  default = ""
}

variable "app_path" {
  description = "Resource prefix"
  type = string
  default = ""
}