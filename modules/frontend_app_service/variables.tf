// *** Linux App Service ***
variable "linux_webapp_name" {
  type = string
}
variable "resource_group_name" {
  type = string
  
}
variable "location" {
  type = string
  
}
variable "service_plan_id" {
  type = string
  
}
variable "https_only" {
  type = bool
  
}
variable "app_settings" {
  type = map(string)
  
}
//site_config
variable "app_command_line" {
  type = string
  
}
variable "always_on" {
  type = bool
}
variable "ftps_state" {
  type = string
}
variable "managed_pipeline_mode" {
  type = string
}
variable "default_documents" {
  type = list(string)
  
}
variable "health_check_eviction_time_in_min" {
  type = number
  
}

variable "remote_debugging_version" {
  type = string
  
}
variable "scm_type" {
  type = string
  
}
variable "use_32_bit_worker" {
  type = bool
}
variable "vnet_route_all_enabled" {
  type = bool
  
}
variable "worker_count" {
  type = number
  
}
//application_stack
variable "node_version" {
  type = string
}
