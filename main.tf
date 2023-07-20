# Creates a Windows webapp dynamically select the application atack and version
resource "azurerm_windows_web_app" "example" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id
  virtual_network_subnet_id = var.virtual_network_subnet_id


  site_config {
    ftps_state       = var.ftps_state
    app_command_line = var.app_command_line
    vnet_route_all_enabled = var.vnet_route_all_enabled
    virtual_application {
    preload = true
    physical_path = var.physical_path
    virtual_path = var.virtual_path
  }
  virtual_application {
    preload = true
    physical_path = var.physical_path1
    virtual_path = var.virtual_path1
  }

    dynamic "application_stack" {
      for_each = var.current_stack == "python" ? [1] : []
      content {
        python_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "node" ? [1] : []
      content {
        node_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "docker" ? [1] : []
      content {
        docker_image     = var.stack_version
        docker_image_tag = var.docker_image_tag
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "dotnet" ? [1] : []
      content {
        dotnet_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "java" ? [1] : []
      content {
        java_server         = var.java_server
        java_server_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "php" ? [1] : []
      content {
        php_version = var.stack_version
      }
    }
    dynamic "application_stack" {
      for_each = var.current_stack == "ruby" ? [1] : []
      content {
        ruby_version = var.stack_version
      }
    }


  }
}

