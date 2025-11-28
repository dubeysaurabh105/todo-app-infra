resource "azurerm_mssql_server" "mssql_server" {
  for_each = var.sql_servers

  name                         = each.value.name
  resource_group_name          = each.value.resource_group_name
  location                     = each.value.location
  administrator_login          = each.value.administrator_login
  administrator_login_password = each.value.administrator_password
  version                      = each.value.version
}
  