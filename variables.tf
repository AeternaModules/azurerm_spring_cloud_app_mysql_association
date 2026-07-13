variable "spring_cloud_app_mysql_associations" {
  description = <<EOT
Map of spring_cloud_app_mysql_associations, attributes below
Required:
    - database_name
    - mysql_server_id
    - name
    - password
    - password_key_vault_id (optional, alternative to password)
    - password_key_vault_secret_name (optional, alternative to password)
    - spring_cloud_app_id
    - username
EOT

  type = map(object({
    database_name                  = string
    mysql_server_id                = string
    name                           = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
    spring_cloud_app_id            = string
    username                       = string
  }))
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
  # path: database_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: username
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: password
  #   condition: length(value) > 0
  #   message:   must not be empty
}

