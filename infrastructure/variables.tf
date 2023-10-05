variable "location" {
  description = "The Azure Region in which all resources groups should be created."
}

variable "rg-name" {
  description = "The name of the resource group"
}

variable "storage-account-name" {
  description = "The name of Azure storage account"
}

variable "source_content" {
  description = "information source content"
}

variable "index_document" {
  description = "name of file to the source content"
}
