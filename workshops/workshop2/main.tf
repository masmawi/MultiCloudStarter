variable "prefix" {
}

variable "regionCenter" {
}

variable "region1" {
}

variable "region2" {
}

resource "azurerm_resource_group" "rg-central" {
}

resource "azurerm_resource_group" "rg-1" {
}


resource "azurerm_app_service_plan" "asp-1" {

}
resource "azurerm_app_service" "as-1" {

}

resource "azurerm_traffic_manager_profile" "tm" {

}


resource "azurerm_sql_server" "sql-server" {

}

resource "azurerm_sql_database" "sql-db" {
  
}

output "fqdn" {
  value = "${azurerm_traffic_manager_profile.tm.fqdn}"
}
