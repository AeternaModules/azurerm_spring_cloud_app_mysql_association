data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.spring_cloud_app_mysql_associations : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_spring_cloud_app_mysql_association" "spring_cloud_app_mysql_associations" {
  for_each = var.spring_cloud_app_mysql_associations

  database_name       = each.value.database_name
  mysql_server_id     = each.value.mysql_server_id
  name                = each.value.name
  password            = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
  spring_cloud_app_id = each.value.spring_cloud_app_id
  username            = each.value.username
}

