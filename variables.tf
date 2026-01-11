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
EOT

  type = map(object({
    date_format               = string
    name                      = string
    path_pattern              = string
    resource_group_name       = string
    storage_account_name      = string
    storage_container_name    = string
    stream_analytics_job_name = string
    time_format               = string
    authentication_mode       = optional(string, "ConnectionString")
    storage_account_key       = optional(string)
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      type            = string
    })
  }))
}

