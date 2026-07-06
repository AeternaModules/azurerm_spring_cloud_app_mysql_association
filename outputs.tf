output "spring_cloud_app_mysql_associations" {
  description = "All spring_cloud_app_mysql_association resources"
  value       = azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations
  sensitive   = true
}
output "spring_cloud_app_mysql_associations_database_name" {
  description = "List of database_name values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.database_name]
}
output "spring_cloud_app_mysql_associations_mysql_server_id" {
  description = "List of mysql_server_id values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.mysql_server_id]
}
output "spring_cloud_app_mysql_associations_name" {
  description = "List of name values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.name]
}
output "spring_cloud_app_mysql_associations_password" {
  description = "List of password values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.password]
  sensitive   = true
}
output "spring_cloud_app_mysql_associations_spring_cloud_app_id" {
  description = "List of spring_cloud_app_id values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.spring_cloud_app_id]
}
output "spring_cloud_app_mysql_associations_username" {
  description = "List of username values across all spring_cloud_app_mysql_associations"
  value       = [for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : v.username]
}

