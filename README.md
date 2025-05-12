# Terraform: Azure Infrastructure Setup

This Terraform project automates the creation of core Azure resources, including:

- Resource Group
- Storage Account with configurable File Shares
- Azure Kubernetes Service (AKS) Cluster
- Log Analytics Workspace for monitoring

---

## 🧱 Project Structure

```
.
├── main.tf               # Main resources definition
├── variables.tf          # Input variable definitions
├── dev.tfvars            # Development environment variables
├── staging.tfvars        # Staging environment variables
├── prod.tfvars           # Production environment variables
├── .gitignore            # Git ignore rules to exclude sensitive data
└── README.md             # Project documentation
```

---

## ⚙️ Requirements

Before running Terraform, ensure you have the following:

- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads)
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- A valid Azure subscription with appropriate permissions

---

## 🚀 Getting Started

### 1. **Clone the Repository**

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/azure-infrastructure-terraform.git
cd azure-infrastructure-terraform
```

### 2. **Login to Azure**

Make sure you're logged into your Azure account using Azure CLI:

```bash
az login
```

### 3. **Configure Your Environment**

You can configure environment-specific settings through `.tfvars` files. By default, the project includes three environment files:

- `dev.tfvars`
- `staging.tfvars`
- `prod.tfvars`

Each file contains the environment-specific configurations such as the region, VM size for AKS, and file share names.

If you'd like to use a specific environment configuration, you can apply it with the `-var-file` option.

### 4. **Initialize Terraform**

Run the following command to initialize the Terraform project. This will download the necessary provider plugins:

```bash
terraform init
```

### 5. **Select Your Environment**

You can choose to apply the configuration for a specific environment by using the `-var-file` flag:

- For **Development**:

```bash
terraform apply -var-file="dev.tfvars"
```

- For **Staging**:

```bash
terraform apply -var-file="staging.tfvars"
```

- For **Production**:

```bash
terraform apply -var-file="prod.tfvars"
```

If you don't specify a `-var-file`, Terraform will default to using `terraform.tfvars`.

### 6. **Review and Apply**

Terraform will show a plan of the resources it intends to create. Review the plan, and if everything looks good, type `yes` to apply the changes:

```bash
terraform apply -var-file="dev.tfvars"
```

---

## 🔧 Customizing Variables

You can customize the following variables, either by editing the `.tfvars` files or overriding them directly via CLI:

| Variable              | Description                            | Default              |
|-----------------------|----------------------------------------|----------------------|
| `location`            | The Azure region to deploy resources   | `Australia South East` |
| `resource_group_name` | Name of the resource group            | `example-resources`  |
| `storage_account_name`| Globally unique storage account name  | `examplestorageacct` |
| `share_names`         | List of file shares to create         | `["share1", "share2"]` |
| `aks_vm_size`         | VM size for AKS node pool             | `Standard_DS2_v2`    |

For more flexibility, you can create custom `.tfvars` files per environment.

---

## 🛑 Clean Up

To remove all resources created by Terraform, run the following command:

```bash
terraform destroy -var-file="prod.tfvars"
```

This will delete the resources from Azure and ensure your environment is cleaned up.

---

## 💡 Notes

- **Storage Account**: The name must be globally unique (lowercase, no special characters).
- **AKS Cluster**: Basic configuration with a single node pool and default settings.
- **File Shares**: By default, each share is allocated 100 GB of space.

---

## 📌 Next Steps

- Enhance the AKS cluster with **autoscaling** or **multiple node pools**.
- Use **outputs** to expose important values such as the AKS kubeconfig or storage account keys.
- Refactor into **modules** for easier reuse across different environments.

---

## 🛠️ Contributing

If you'd like to contribute to this project, feel free to fork the repository and submit a pull request. Be sure to follow the coding style and include appropriate tests and documentation.

---

## 📄 License

This project is licensed under the MIT License. See the LICENSE file for more information.
