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
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

