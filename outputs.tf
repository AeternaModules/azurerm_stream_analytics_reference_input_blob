output "stream_analytics_reference_input_blobs_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.authentication_mode }
}
output "stream_analytics_reference_input_blobs_date_format" {
  description = "Map of date_format values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.date_format }
}
output "stream_analytics_reference_input_blobs_name" {
  description = "Map of name values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.name }
}
output "stream_analytics_reference_input_blobs_path_pattern" {
  description = "Map of path_pattern values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.path_pattern }
}
output "stream_analytics_reference_input_blobs_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.resource_group_name }
}
output "stream_analytics_reference_input_blobs_serialization" {
  description = "Map of serialization values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.serialization }
}
output "stream_analytics_reference_input_blobs_storage_account_key" {
  description = "Map of storage_account_key values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.storage_account_key }
  sensitive   = true
}
output "stream_analytics_reference_input_blobs_storage_account_name" {
  description = "Map of storage_account_name values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.storage_account_name }
}
output "stream_analytics_reference_input_blobs_storage_container_name" {
  description = "Map of storage_container_name values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.storage_container_name }
}
output "stream_analytics_reference_input_blobs_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.stream_analytics_job_name }
}
output "stream_analytics_reference_input_blobs_time_format" {
  description = "Map of time_format values across all stream_analytics_reference_input_blobs, keyed the same as var.stream_analytics_reference_input_blobs"
  value       = { for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : k => v.time_format }
}

