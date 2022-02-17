terraform {
    required_providers {
      azurerm = {
          source  = "hashicorp/azurerm"
          version = "~>2.94"
      }
    }
    required_version = ">= 1.1.0"
}

provider "azurerm" {
    features {}
}

# Create Resource Group
resource "azurerm_resource_group" "rg" {
    name     = "${var.resource_group_name}"
    location = "${var.resource_location}"
}
