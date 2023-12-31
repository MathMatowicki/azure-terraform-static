#!/bin/bash

RESOURCE_GROUP_NAME=rg-matdev-static
STORAGE_ACCOUNT_NAME=matdevstatic
CONTAINER_NAME=tfmatdevstatic

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location polandcentral

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Get storage account key
ACCOUNT_KEY=$(az storage account keys list --resource-group $RESOURCE_GROUP_NAME --account-name $STORAGE_ACCOUNT_NAME --query '[0].value' -o tsv)

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME --account-key $ACCOUNT_KEY

echo "storage_account_name: $STORAGE_ACCOUNT_NAME"