terraform {
  backend "azurerm" {
    resource_group_name  = "rg-matdev-static"
    storage_account_name = "matdevstatic"
    container_name       = "tfmatdevstatic"
    key                  = "terraform.tfstate"
  }
}

















