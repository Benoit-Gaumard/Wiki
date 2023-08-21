terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform"
    storage_account_name = "tfstate750916220"
    container_name       = "tfstates"
    key                  = "wiki/wiki.terraform.tfstate"
  }
}