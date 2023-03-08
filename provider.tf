terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "1.1.7"
    }
  }
  backend "azurerm" {
        resource_group_name  = "sparrow-terraform"
        storage_account_name = "sparrowterrraformtf"
        container_name       = "terraformstate"
        key                  = "terraform.tfstate"
    }
}


provider "azurerm" {
  features {}
  # Configuration options
}