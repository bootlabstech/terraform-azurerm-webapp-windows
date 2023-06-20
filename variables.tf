variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

# variable "app_command_line" {
#   type        = string
#   description = "name of the azurerm_app_service_plan"
# }

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