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
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_reference_input_blob's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: stream_analytics_job_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: date_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: path_pattern
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_account_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_account_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_container_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: time_format
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: serialization.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serialization.field_delimiter
  #   condition: contains([" ", ",", "\t", "|", ";"], value)
  #   message:   must be one of:  , ,, 	, |, ;
  # path: serialization.encoding
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

