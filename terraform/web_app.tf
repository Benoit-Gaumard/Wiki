# Create resource group
resource "azurerm_resource_group" "wiki" {
  name     = "rg-wiki"
  location = var.location
}

resource "azurerm_postgresql_server" "postgresql" {
  name                          = "db-prostgres-wiki"
  location                      = azurerm_resource_group.wiki.location
  resource_group_name           = azurerm_resource_group.wiki.name
  version                       = "11"
  administrator_login           = var.postgresql_admin_name
  administrator_login_password  = var.postgresql_admin_password
  sku_name                      = var.postgresql_sku_name
  storage_mb                    = var.postgresql_storage_size
  ssl_enforcement_enabled       = true
  public_network_access_enabled = true
  auto_grow_enabled             = true
  #backup_retention_days         = var.postgresql_backup_retention_days
}

# PostgreSQL Connection security: Allowing access to Azure services
resource "azurerm_postgresql_firewall_rule" "postgresql_firewall_rule" {
  name                = "Azure_Service_Access"
  resource_group_name = azurerm_resource_group.wiki.name
  server_name         = azurerm_postgresql_server.postgresql.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

# Create the Linux App Service Plan
resource "azurerm_service_plan" "appserviceplan" {
  name                = "wiki-asp"
  location            = azurerm_resource_group.wiki.location
  resource_group_name = azurerm_resource_group.wiki.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "web-app-bga-wiki"
  resource_group_name = azurerm_resource_group.wiki.name
  location            = azurerm_resource_group.wiki.location
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  app_settings = {
    "DB_TYPE" = "postgres"
    "DB_HOST" = "${azurerm_postgresql_server.postgresql.fqdn}"
    "DB_PORT" = 5432
    "DB_NAME" = "postgres"
    "DB_USER" = "${azurerm_postgresql_server.postgresql.administrator_login}@${azurerm_postgresql_server.postgresql.name}"
    "DB_PASS" = "${azurerm_postgresql_server.postgresql.administrator_login_password}"
    "DB_SSL"  = true
  }

  identity {
    type = "SystemAssigned"
  }

  site_config {
    always_on                               = "false"
    container_registry_use_managed_identity = "true"

    application_stack {
      docker_registry_url      = "https://index.docker.io" #"https://hub.docker.com/"
      docker_image_name        = "requarks/wiki:latest"
      docker_registry_username = "proxi"
      docker_registry_password = "test123$"
    }

  }
}

# Publish the web address that we will use to access the WIKI application
output "web_app_hostname" {
  value = azurerm_linux_web_app.webapp.default_hostname
}

# Publish the PostgreSQL name (FQDN)
output "postgresql_server_fqdn" {
  value = azurerm_postgresql_server.postgresql.fqdn
}