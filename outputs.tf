output "spring_cloud_app_mysql_associations_id" {
  description = "Map of id values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.id }
}
output "spring_cloud_app_mysql_associations_database_name" {
  description = "Map of database_name values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.database_name }
}
output "spring_cloud_app_mysql_associations_mysql_server_id" {
  description = "Map of mysql_server_id values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.mysql_server_id }
}
output "spring_cloud_app_mysql_associations_name" {
  description = "Map of name values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.name }
}
output "spring_cloud_app_mysql_associations_password" {
  description = "Map of password values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.password }
  sensitive   = true
}
output "spring_cloud_app_mysql_associations_spring_cloud_app_id" {
  description = "Map of spring_cloud_app_id values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.spring_cloud_app_id }
}
output "spring_cloud_app_mysql_associations_username" {
  description = "Map of username values across all spring_cloud_app_mysql_associations, keyed the same as var.spring_cloud_app_mysql_associations"
  value       = { for k, v in azurerm_spring_cloud_app_mysql_association.spring_cloud_app_mysql_associations : k => v.username }
}

