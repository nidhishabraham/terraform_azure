# Azure Infrastructure using Terraform 

1. Create the Terraform Manifest Files

[main.tf] This file defines the Azure provider and backend for storing the Terraform state.

Terraform block: Defines the required provider (Azure) and version and configures the backend to store the state in an Azure Storage Account.

Provider block: Configures the Azure provider, specifying the subscription ID.

Resource Group: Creates a resource group in the "Central India" region.

[variables.tf] This file defines the variables used in the configuration.

Prefix variable: This variable is used as a prefix for naming resources, making it easier to identify and manage related resources.

[vpc.tf] This file defines the network infrastructure components, including the Virtual Network (VNet), Subnet, Network Interface (NIC), and a Virtual Machine (VM).

Virtual Network: Defines a VNet with a /16 address space.
Subnet: Creates a subnet within the VNet with a /24 address space.
Network Interface: Configures a NIC connected to the subnet.
Virtual Machine: Provisions an Ubuntu VM, specifying storage, network, and OS configurations.

2. Commands to Execute
Initialize Terraform  - This command initializes the working directory containing Terraform configuration files. It downloads the Azure provider and sets up the backend.

terraform init

Plan the Deployment - The terraform plan command creates an execution plan, showing what actions Terraform will take to achieve the desired state.

terraform plan -out=tfplan

-out=tfplan saves the plan to a file, which can be applied later.

Apply the Plan - This command applies the changes required to reach the desired state of the configuration.

terraform apply tfplan

This command reads the saved plan from tfplan and applies it.

Destroy the Resources (Optional) - If you want to destroy the resources created by Terraform, use the following command:

terraform destroy

3. Explanation of Steps

Initialization (terraform init): Prepares the working directory for use with Terraform, including downloading the necessary provider plugins.

Planning (terraform plan): Terraform compares the current state with the desired state defined in the configuration files and shows what changes will be made.

Applying (terraform apply): Executes the plan created in the planning step and makes the necessary changes to the infrastructure.

Destroying (terraform destroy): Removes all the resources managed by Terraform, essentially tearing down the infrastructure.

4. Replace Placeholder Values

<AZURE_KEY>: Replace with the actual key for the state file in your Azure Storage Account.
<SUBSCRIPTION_ID>: Replace with your actual Azure subscription ID.

These Terraform files and commands will provision an Azure Resource Group, a Virtual Network, a Subnet, a Network Interface, and a Virtual Machine as defined in the configuration.
