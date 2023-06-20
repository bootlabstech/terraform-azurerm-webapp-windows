# # resource "azurerm_app_service_plan" "appservice" {
# #   name                = var.appservice_name
# #   location            = var.location
# #   resource_group_name = var.resource_group_name
# #   kind                = var.kind
# #   reserved            = var.reserved

# #   sku {
# #     tier = var.sku_tier
# #     size = var.sku_size
# #   }
# # }

# resource "azurerm_linux_web_app" "web_app" {
#   name                = var.name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   service_plan_id     = var.service_plan_id

#   site_config {
#     minimum_tls_version = var.minimum_tls_version
#     app_command_line = var.app_command_line
#     ftps_state = "FtpsOnly"
#   }
# }
resource "azurerm_windows_web_app" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    ftps_state = var.ftps_state
    app_command_line = var.app_command_line
     dynamic "application_stack" {
      for_each = var.current_stack == "dotnet" ? [1] : []
      content {
        dotnet_version = var.stack_version
      }
      
      
    }

    dynamic "application_stack" {
      for_each = var.current_stack == "node" ? [1] : []
      content {
        node_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "php" ? [1] : []
      content {
        php_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "java" ? [1] : []
      content {
        java_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "python" ? [1] : []
      content {
        python_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "ruby" ? [1] : []
      content {
        ruby_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "go" ? [1] : []
      content {
        go_version = var.stack_version
      }
    }
  }
}

  

