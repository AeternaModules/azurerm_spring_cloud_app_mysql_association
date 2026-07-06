variable "spring_cloud_app_mysql_associations" {
  description = <<EOT
Map of spring_cloud_app_mysql_associations, attributes below
Required:
    - database_name
    - mysql_server_id
    - name
    - password
    - spring_cloud_app_id
    - username
EOT

  type = map(object({
    database_name       = string
    mysql_server_id     = string
    name                = string
    password            = string
    spring_cloud_app_id = string
    username            = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_app_mysql_associations : (
        length(v.database_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_app_mysql_associations : (
        length(v.username) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_app_mysql_associations : (
        length(v.password) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_app_mysql_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SpringCloudAppAssociationName] !ok
  # path: name
  #   source:    [from validate.SpringCloudAppAssociationName] !regexp.MustCompile(`^([a-z])([a-z\d-]{2,30})([a-z\d])$`).MatchString(v)
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] !ok
  # path: spring_cloud_app_id
  #   source:    [from validate.SpringCloudAppID] err != nil
  # path: mysql_server_id
  #   source:    validation.Any(...) - no translation rule yet, add one
}

