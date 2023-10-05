# Static Website Deployment to Azure with Terraform

This project demonstrates how to deploy a static website to Microsoft Azure using Terraform. It provisions the necessary Azure resources, including a storage account and a static website container, and deploys your HTML, CSS, and JavaScript files to make your website accessible on the internet.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- An Azure subscription

## Usage

Follow these steps to deploy your static website to Azure:

1. Clone this repository to your local machine:

  ```bash
   git clone https://github.com/mathmatowicki/azure-terraformm-static.git
  ```
  ```bash
   cd azure-terraform-static
  ```
  ```bash
   az login
  ```
2. Create a terraform.tfvars file and define your variables:

3. Initialize the Terraform working directory:
  ```bash
  terraform init
  ```
# Resource group name
resource_group_name = "your-resource-group"

# Storage account name (must be globally unique)
storage_account_name = "yourstorageaccountname"

4. Apply the Terraform configuration to create the Azure resources:

  ```bash
  terraform apply
  ```
5. Once the deployment is complete, Terraform will provide the URL of your static website. You can access it in a web browser.

6. To upload your static website files to the storage container, use the Azure CLI or any Azure storage explorer tool.

7. To update your website, simply replace or add files to the storage container.

## Cleanup
When you're done with the project, you can remove the Azure resources to avoid incurring additional costs:

```bash
terraform destroy
```
## Contributing
If you'd like to contribute to this project, please fork the repository and submit a pull request. We welcome any contributions that enhance the project or improve its documentation.

License
This project is licensed under the MIT License - see the LICENSE.md file for details.



