// Variables for RG 
variable "rg_name" {
  type = string
}
variable "location" {
    type = string
}


// *** Variables for App Service Plan ***
variable "service_plan_name" {
  type = string
}
variable "sku_name" {
  type = string
}
variable "os_type" {
  type = string
}

// *** Values for Backend Linux App Service ***
// *** Linux App Service ***
variable "backend_app_service_name" {
  type = string
}
variable "backend_app_https_only" {
  type = bool
  
}
variable "backend_app_app_settings" {
  type = map(string) 
}
//site_config
variable "backend_app_command_line" {
  type = string
  
}
variable "backend_app_always_on" {
  type = bool
}
variable "backend_app_ftps_state" {
  type = string
}
variable "backend_app_managed_pipeline_mode" {
  type = string
}
variable "backend_app_default_documents" {
  type = list(string) 
}
variable "backend_app_health_check_eviction_time_in_min" {
  type = number 
}
variable "backend_app_remote_debugging_version" {
  type = string  
}
variable "backend_app_scm_type" {
  type = string  
}
variable "backend_app_use_32_bit_worker" {
  type = bool
}
variable "backend_app_vnet_route_all_enabled" {
  type = bool  
}
variable "backend_app_worker_count" {
  type = number  
}
//application_stack
variable "backend_app_service_dotnet_version" {
  type = string
}


// *** Values for Frontend Linux App Service ***
// *** Linux App Service ***
variable "frontend_app_service_name" {
  type = string
}
variable "frontend_app_https_only" {
  type = bool
  
}
variable "frontend_app_settings" {
  type = map(string) 
}
//site_config
variable "frontend_app_app_command_line" {
  type = string
  
}
variable "frontend_app_always_on" {
  type = bool
}
variable "frontend_app_ftps_state" {
  type = string
}
variable "frontend_app_managed_pipeline_mode" {
  type = string
}
variable "frontend_app_default_documents" {
  type = list(string) 
}
variable "frontend_app_health_check_eviction_time_in_min" {
  type = number 
}
variable "frontend_app_remote_debugging_version" {
  type = string  
}
variable "frontend_app_scm_type" {
  type = string  
}
variable "frontend_app_use_32_bit_worker" {
  type = bool
}
variable "frontend_app_vnet_route_all_enabled" {
  type = bool  
}
variable "frontend_app_worker_count" {
  type = number  
}
//application_stack
variable "frontend_app_service_node_version" {
  type = string
}
