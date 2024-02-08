# variable "ARM_SUBSCRIPTION_ID" {
#   description = "Azure subscription id"
#   type = string
#   default = ""
# }

# variable "ARM_TENANT_ID" {
#   description = "Azure tenant id"
#   type = string
#   default = "" 
# }

# variable "ARM_CLIENT_ID" {
#   description = "Azure service principal id"
#   type = string
#   default = ""
# }

# variable "ARM_CLIENT_SECRET" {
#   description = "Azure service principal secret"
#   type = string
#   default = ""  
# }

variable "resource_group_name" {
  description = "Resource group name"
  type = string
  default = "RG-TF-DEV-FUNC"
}

variable "resource_group_location" {
  description = "Resource group location"
  type = string
  # default = "westeurope"
  # default = "italynorth"
  default = "polandcentral"
}