// Values for RG
rg_name= "App-Services-RG"
location= "canadacentral"

// Values for App Service Plan
service_plan_name= "SPARROW-APP-PLAN1"
sku_name= "B1"
os_type= "Linux"

// Values for Backend App Service
backend_app_service_name= "sparrowkaanbackend"
backend_app_https_only=true
backend_app_app_settings= {
           "APPINSIGHTS_INSTRUMENTATIONKEY"             = "2dd738e7-56e1-4dab-b2ba-ec802e4fb790"
           "APPLICATIONINSIGHTS_CONNECTION_STRING"      = "InstrumentationKey=2dd738e7-56e1-4dab-b2ba-ec802e4fb790;IngestionEndpoint=https://eastus-8.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/"
           "ASPNETCORE_ENVIRONMENT"                     = "Development"
           "ApplicationInsightsAgent_EXTENSION_VERSION" = "~3"
           "WEBSITES_PORT"                              = "8080"
           "XDT_MicrosoftApplicationInsights_Mode"      = "Recommended"
        }
//site_config
backend_app_command_line= "dotnet DotNetAPI.dll" 
backend_app_always_on=false
backend_app_ftps_state="FtpsOnly" 
backend_app_managed_pipeline_mode="Integrated"
backend_app_default_documents=[
               "Default.htm",
               "Default.html",
               "Default.asp",
               "index.htm",
               "index.html",
               "iisstart.htm",
               "default.aspx",
               "index.php",
              "hostingstart.html",
            ] 
backend_app_health_check_eviction_time_in_min= 3
backend_app_remote_debugging_version="VS2019"
backend_app_scm_type="None"
backend_app_use_32_bit_worker=true
backend_app_vnet_route_all_enabled=false
backend_app_worker_count= 1
//application_stack
backend_app_service_dotnet_version="6.0"



// Values for Frontend App Service
frontend_app_service_name= "sparrowkaanfrontend"
frontend_app_https_only=true
frontend_app_settings= {
           "ApplicationInsightsAgent_EXTENSION_VERSION" = "~3"
           "WEBSITES_PORT"                              = "8080"
          
        }
//site_config
frontend_app_app_command_line="pm2 serve /home/site/wwwroot --no-daemon"
frontend_app_always_on=false
frontend_app_ftps_state="FtpsOnly" 
frontend_app_managed_pipeline_mode="Integrated"
frontend_app_default_documents=[
               "Default.htm",
               "Default.html",
               "Default.asp",
               "index.htm",
               "index.html",
               "iisstart.htm",
               "default.aspx",
               "index.php",
              "hostingstart.html",
            ] 
frontend_app_health_check_eviction_time_in_min= 3
frontend_app_remote_debugging_version="VS2019"
frontend_app_scm_type="None"
frontend_app_use_32_bit_worker=true
frontend_app_vnet_route_all_enabled=false
frontend_app_worker_count= 1
//application_stack
frontend_app_service_node_version="14-lts"
