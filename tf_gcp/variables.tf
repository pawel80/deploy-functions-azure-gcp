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

# variable "resource_group_name" {
#   description = "Resource group name"
#   type = string
#   default = "RG-TF-TEST-FUNC"
# }

# variable "resource_group_location" {
#   description = "Resource group location"
#   type = string
#   # default = "westeurope"
#   # default = "italynorth"
#   default = "polandcentral"
# }