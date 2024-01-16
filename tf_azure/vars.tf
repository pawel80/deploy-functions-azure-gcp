# TF destroy will try to read var.resource, ..., var.api_username, var.api_password
# so we need to provide some default values
  
variable "resource_group_name" {
  description = "Resource group name"
  type = string
  default = ""
}

variable "resource_group_location" {
  description = "Resource group location"
  type = string
  default = "westeurope"
}