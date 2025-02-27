/**
 * Outputs for Google Cloud Service API enablement
 */

output "project_id" {
  description = "The Google Cloud project ID where APIs were enabled"
  value       = var.project_id
}

output "enabled_api_count" {
  description = "The number of APIs that were enabled"
  value       = length(google_project_service.enabled_apis)
}

# Output the enabled APIs
output "enabled_apis" {
  description = "The list of APIs that have been enabled"
  value       = [for api in google_project_service.enabled_apis : api.service]
}