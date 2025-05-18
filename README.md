# Azure Terraform Infrastructure Project

This project is designed to provision shared infrastructure in Microsoft Azure using Terraform. It follows a structured approach with separate environments for development, staging, and production, utilizing Terraform modules for resource management.

## Project Structure

```
azure-terraform-infra
├── environments
│   ├── dev
│   ├── staging
│   └── prod
├── modules
│   ├── networking
│   ├── compute
│   └── storage
├── .gitlab-ci.yml
├── backend.tf
├── provider.tf
├── variables.tf
├── outputs.tf
└── README.md
```

## Environments

- **Development (`environments/dev`)**: Contains Terraform configurations for the development environment.
- **Staging (`environments/staging`)**: Contains Terraform configurations for the staging environment.
- **Production (`environments/prod`)**: Contains Terraform configurations for the production environment.

Each environment includes:
- `main.tf`: Defines the infrastructure resources using Terraform modules.
- `variables.tf`: Declares input variables specific to the environment.
- `outputs.tf`: Specifies the output variables for the environment.
- `terraform.tfvars`: Contains the variable values for the environment.

## Modules

The project includes the following modules:
- **Networking (`modules/networking`)**: Defines networking resources such as Virtual Networks and Subnets.
- **Compute (`modules/compute`)**: Defines compute resources such as Azure Kubernetes Service (AKS).
- **Storage (`modules/storage`)**: Defines storage resources such as Azure Container Registry (ACR) and Azure Key Vault.

Each module includes:
- `main.tf`: Defines the resources for the module.
- `variables.tf`: Declares input variables for the module.
- `outputs.tf`: Specifies the output variables for the module.

## CI/CD Pipeline

The project utilizes GitLab CI/CD for automated deployment. The `.gitlab-ci.yml` file defines the following stages:
- `terraform_init`: Initializes the Terraform configuration.
- `terraform_plan`: Creates an execution plan.
- `terraform_apply`: Applies the changes required to reach the desired state.
- `terraform_destroy`: Destroys the Terraform-managed infrastructure.

## Setup Instructions

1. Clone the repository.
2. Navigate to the desired environment directory (e.g., `environments/dev`).
3. Update the `terraform.tfvars` file with your specific variable values.
4. Run the following commands to initialize and apply the Terraform configuration:
   ```bash
   terraform init
   terraform apply
   ```

## Usage Guidelines

- Ensure you have the necessary permissions in Azure to create resources.
- Review the Terraform configurations and modules to understand the resources being provisioned.
- Use the appropriate environment for testing and production deployments.

For further details, refer to the individual environment and module directories.