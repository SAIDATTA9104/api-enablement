# Google Cloud project configuration
project_id = "saikat-296802"
region     = "us-central1"
zone       = "us-central1-a"

# List of APIs to enable
# Note: Each API should be in the format "service.googleapis.com"
apis_to_enable = [
  "compute.googleapis.com",
  "container.googleapis.com",
  "cloudbuild.googleapis.com",
  "storage.googleapis.com",
  "iam.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "alloydb.googleapis.com"
]

# API enablement configuration
disable_dependent_services = true
disable_on_destroy         = false