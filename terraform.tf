# Configure the Azure provider
terraform {
  backend "azurerm" {
    resource_group_name  = "TF-RG"
    storage_account_name = "storageaccount32432"
    container_name       = "tfstate-container"
    key                  = "terraform.tfstate"
  }
}
