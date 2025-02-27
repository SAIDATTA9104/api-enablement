/**
 * Terraform configuration for enabling Google Cloud Service APIs
 */

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# Enable multiple Google Cloud APIs
resource "google_project_service" "enabled_apis" {
  for_each = toset(var.apis_to_enable)

  project = var.project_id
  service = each.value

  disable_dependent_services = var.disable_dependent_services
  disable_on_destroy         = var.disable_on_destroy

  timeouts {
    create = "30m"
    update = "40m"
  }
}

