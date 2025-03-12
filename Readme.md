
## Authors

Saikat Dutta- [@skatuttaaa@gmail.com]

# Azure Devops Pipeline API
   - [ADO Pipeline](<Link>)

# Google Cloud API Enablement with Terraform

This Terraform configuration enables specified Google Cloud APIs for a project. Please refer the terraform documentation:
   - [Terraform Source](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service)

## Azure Devops Parameters

- `apis_to_enable`: List of Google Cloud APIs to enable. This is to be provided by the user in a comma separated format.


## Prerequisites

- Terraform installed (version 1.0.0+)
- Google Cloud service account with appropriate permissions
- Service account key file named `<Name of the SA name>`. This is provided as a secure file.
- Google Cloud Storage bucket for Terraform state

## Configuration

1. Update `<File name>.tfvars` with your specific values:
   - `project_id`: Your Google Cloud project ID
   - `region`: Your preferred Google Cloud region
   - `zone`: Your preferred Google Cloud zone
   - `state_bucket`: The name of your GCS bucket for Terraform state
   - `apis_to_enable`: List of Google Cloud APIs to enable. This values are updated from Azure Devops parameter.


## Usage

Initialize Terraform:
```
terraform init
```

Plan the changes:
```
terraform plan
```

Apply the changes:
```
terraform apply
```

## Structure

- `main.tf`: Main Terraform configuration
- `variables.tf`: Variable definitions
- `terraform.tfvars`: Variable values
- `outputs.tf`: Output definitions
