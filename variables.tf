variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "stack_version" {
  type        = string
  description = "name of the azurerm_app_service_plan"
  default = ""
}

variable "name" {
  type        = string
  description = "name of the azurerm_linux_web_app"
}

# variable "kind" {
#   type        = string
#   description = "The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows."
#   # default     = "Linux"
# }

variable "dotnet_version" {
  type        = string
  description = " Is this App Service Plan Reserved. Defaults to false."
  default     = "6.0"
}

variable "current_stack" {
  type        = string
  description = " Specifies the plan's pricing tier."
  # default     = "dotnet"
}

variable "ftps_state" {
  type        = string
  description = " Specifies the plan's instance size."
  default     = "FtpsOnly"
}

variable "app_command_line" {
  type        = string
  description = "(optional) describe your variable"
  default     = ""
}

variable "service_plan_id" {
  type        = string
  description = "(optional) describe your variable"

}
# variable "docker_image_name" {
#   type = string
#   description = "vnet link"
#   default = ""
# }

# variable "docker_registry_url" {
#   type = string
#   description = "Tag for docker image"
#   default = ""
# }
# variable "docker_registry_username" {
#     type =  string
#     description = "value"
#     default = ""

# }
# variable "docker_registry_password" {
#     type = string
#     description = "value"
#     default = ""

# }
variable "java_embedded_server_enabled" {
    type =  string
    description = "value"
    default = ""

}
variable "tomcat_version" {
    type = string
    description = "value"
    default = ""

}