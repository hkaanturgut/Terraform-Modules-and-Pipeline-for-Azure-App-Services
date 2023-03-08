// *** Resource Group for  ***
module "rg" {
    source = "./modules/resource_group"
    name=var.rg_name
    location=var.location
  
}


// *** App Service Plan ***
module "app_service_plan" {
    source = "./modules/app_service_plan"
    service_plan_name= var.service_plan_name
    resource_group_name= module.rg.name
    location= module.rg.location
    sku_name= var.sku_name
    os_type= var.os_type
  
}

// *** App Service for Backend ***
module "backend_app_service" {
    source = "./modules/backend_app_service"
    linux_webapp_name= var.backend_app_service_name
    resource_group_name=module.rg.name
    location=module.rg.location
    service_plan_id=module.app_service_plan.id
     https_only                        = var.backend_app_https_only
     app_settings=var.backend_app_app_settings

     
    //site_config
    app_command_line                        = var.backend_app_command_line
    always_on=var.backend_app_always_on
    ftps_state=var.backend_app_ftps_state
    managed_pipeline_mode=var.backend_app_managed_pipeline_mode
    default_documents                       = var.backend_app_default_documents
       

    health_check_eviction_time_in_min       = var.backend_app_health_check_eviction_time_in_min
    remote_debugging_version                = var.backend_app_remote_debugging_version
    scm_type                                = var.backend_app_scm_type
    use_32_bit_worker=var.backend_app_use_32_bit_worker
    vnet_route_all_enabled                  = var.backend_app_vnet_route_all_enabled
    worker_count                            = var.backend_app_worker_count 
    //application_stack
    dotnet_version=var.backend_app_service_dotnet_version
   
}

// *** App Service for Frontend ***
module "frontend_app_service" {
    source = "./modules/frontend_app_service"
    linux_webapp_name= var.frontend_app_service_name
    resource_group_name=module.rg.name
    location=module.rg.location
    service_plan_id=module.app_service_plan.id
     https_only                        = var.frontend_app_https_only
     app_settings=var.frontend_app_settings

     
    //site_config
    app_command_line                        = var.frontend_app_app_command_line
    always_on=var.frontend_app_always_on
    ftps_state=var.frontend_app_ftps_state
    managed_pipeline_mode=var.frontend_app_managed_pipeline_mode
    default_documents                       = var.frontend_app_default_documents
       

    health_check_eviction_time_in_min       = var.frontend_app_health_check_eviction_time_in_min
    remote_debugging_version                = var.frontend_app_remote_debugging_version
    scm_type                                = var.frontend_app_scm_type
    use_32_bit_worker=var.frontend_app_use_32_bit_worker
    vnet_route_all_enabled                  = var.frontend_app_vnet_route_all_enabled
    worker_count                            = var.frontend_app_worker_count 
    //application_stack
    node_version=var.frontend_app_service_node_version
   
}