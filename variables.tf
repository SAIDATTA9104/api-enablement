/**
 * Variables for Google Cloud Service API enablement
 */

variable "project_id" {
  description = "The Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "The Google Cloud region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The Google Cloud zone"
  type        = string
  default     = "us-central1-a"
}

variable "apis_to_enable" {
  description = "List of Google Cloud APIs to enable"
  type        = list(string)
  default     = []
}

variable "disable_dependent_services" {
  description = "Whether to disable dependent services when disabling a service"
  type        = bool
  default     = false
}

variable "disable_on_destroy" {
  description = "Whether to disable the service when the Terraform resource is destroyed"
  type        = bool
  default     = true
}