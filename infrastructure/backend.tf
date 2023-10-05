terraform {
  backend "azurerm" {
    resource_group_name  = "matdevstate"
    storage_account_name = "matdevstate20440"
    container_name       = "matdevstate"
    key                  = "terraform.tfstate"
  }
}

















