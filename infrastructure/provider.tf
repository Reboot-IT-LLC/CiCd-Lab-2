terraform {
  required_version = ">= 0.13"  # Adjust as necessary based on your Terraform version
    
  backend "azurerm" {
    resource_group_name   = "RG-CiCd-Lab-1"
    storage_account_name  = "cicdlab1storage"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.46"
    }
  }
}

provider "azurerm" {
  features {}
}
