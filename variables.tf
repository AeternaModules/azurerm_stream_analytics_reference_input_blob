variable "stream_analytics_reference_input_blobs" {
  description = <<EOT
Map of stream_analytics_reference_input_blobs, attributes below
Required:
    - date_format
    - name
    - path_pattern
    - resource_group_name
    - storage_account_name
    - storage_container_name
    - stream_analytics_job_name
    - time_format
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - type (required)
Optional:
    - authentication_mode
    - storage_account_key
    - storage_account_key_key_vault_id (alternative to storage_account_key - read from Key Vault instead)
    - storage_account_key_key_vault_secret_name (alternative to storage_account_key - read from Key Vault instead)
EOT

  type = map(object({
    date_format                               = string
    name                                      = string
    path_pattern                              = string
    resource_group_name                       = string
    storage_account_name                      = string
    storage_container_name                    = string
    stream_analytics_job_name                 = string
    time_format                               = string
    authentication_mode                       = optional(string)
    storage_account_key                       = optional(string)
    storage_account_key_key_vault_id          = optional(string)
    storage_account_key_key_vault_secret_name = optional(string)
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      type            = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.stream_analytics_job_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.date_format) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.path_pattern) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        v.storage_account_key == null || (length(v.storage_account_key) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.storage_account_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.storage_container_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        length(v.time_format) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.stream_analytics_reference_input_blobs : (
        v.serialization.field_delimiter == null || (contains([" ", ",", "\t", "|", ";"], v.serialization.field_delimiter))
      )
    ])
    error_message = "must be one of:  , ,, 	, |, ;"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

