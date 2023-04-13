# We first specify the terraform provider. 
# Terraform will use the provider to ensure that we can work with Microsoft Azure

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.92.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
  subscription_id = "4c1aeac6-6f51-4ddd-9363-600525e591c8"
  client_id       = "a143f826-e8c6-4175-b1b2-0cadd6083147"
  client_secret   = "Q678Q~_CjnwdM6T0tK9aov21vgs_KVPB4mOpIaP7"
  tenant_id       = "5dc60cfd-74f0-44d7-b10e-a2de3309533e"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp"{
  name="app-grp" 
  location="North Europe"
}

resource "azurerm_resource_group" "app_grp-new"{
  name="app-grp-new" 
  location="North Europe"
}