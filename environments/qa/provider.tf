terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.106.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pramod-rg01"
    storage_account_name = "pramodbackend"
    container_name       = "qabackend"
    key                  = "qa.terraform.tfstate"
  }  
}

provider "azurerm" {
  features {}
}
