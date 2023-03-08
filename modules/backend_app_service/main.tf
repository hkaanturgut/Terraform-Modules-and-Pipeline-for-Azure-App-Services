// *** Linux App Service ***
resource "azurerm_linux_web_app" "linux_webapp" {
  name                = var.linux_webapp_name
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = var.service_plan_id
  https_only= var.https_only


  app_settings                      = var.app_settings

   site_config {
    app_command_line= var.app_command_line
    always_on             = var.always_on
    ftps_state            = var.ftps_state
    managed_pipeline_mode = var.managed_pipeline_mode
    default_documents= var.default_documents
    health_check_eviction_time_in_min= var.health_check_eviction_time_in_min
    remote_debugging_version=var.remote_debugging_version
    use_32_bit_worker     = var.use_32_bit_worker
    vnet_route_all_enabled                  = var.vnet_route_all_enabled
    worker_count= var.worker_count
    application_stack {
      dotnet_version = var.dotnet_version
    }
  
}

}