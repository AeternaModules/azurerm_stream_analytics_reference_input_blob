output "stream_analytics_reference_input_blobs" {
  description = "All stream_analytics_reference_input_blob resources"
  value       = azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs
  sensitive   = true
}
output "stream_analytics_reference_input_blobs_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.authentication_mode]
}
output "stream_analytics_reference_input_blobs_date_format" {
  description = "List of date_format values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.date_format]
}
output "stream_analytics_reference_input_blobs_name" {
  description = "List of name values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.name]
}
output "stream_analytics_reference_input_blobs_path_pattern" {
  description = "List of path_pattern values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.path_pattern]
}
output "stream_analytics_reference_input_blobs_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.resource_group_name]
}
output "stream_analytics_reference_input_blobs_serialization" {
  description = "List of serialization values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.serialization]
}
output "stream_analytics_reference_input_blobs_storage_account_key" {
  description = "List of storage_account_key values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.storage_account_key]
  sensitive   = true
}
output "stream_analytics_reference_input_blobs_storage_account_name" {
  description = "List of storage_account_name values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.storage_account_name]
}
output "stream_analytics_reference_input_blobs_storage_container_name" {
  description = "List of storage_container_name values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.storage_container_name]
}
output "stream_analytics_reference_input_blobs_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.stream_analytics_job_name]
}
output "stream_analytics_reference_input_blobs_time_format" {
  description = "List of time_format values across all stream_analytics_reference_input_blobs"
  value       = [for k, v in azurerm_stream_analytics_reference_input_blob.stream_analytics_reference_input_blobs : v.time_format]
}

