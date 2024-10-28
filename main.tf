# Terraform - Configure Azure Provider 
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.59.0"
    }
  }
  
  # Configure Terraform backend to store the state in Azure Storage Account
  backend "azurerm" {
    resource_group_name   = "terraform-ResourceGroup"
    storage_account_name  = "heydevopsterraformtstate"
    container_name        = "tstate"
    key                   = "<AZURE_KEY>"  # Replace with the actual key name
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
  subscription_id = "<SUBSCRIPTION_ID>"  # Replace with your Azure subscription ID
  skip_provider_registration = "true"
}

variable "prefix" {
  default = "terraform"
}

# Resource Group Definition
resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-ResourceGroup1"
  location = "Central India"
}
