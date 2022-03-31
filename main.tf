data "azurerm_resource_group" "rg" {
  name = "TF-RG"
}
/*
#Resource blocks to define components of your infraestructure
#Resource blocks have two strings before the block: the resource type and the resource name.
resource "azurerm_resource_group" "rg" {
  name     = var.rg_data.name
  location = var.rg_data.location
}
*/

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Virtual_Network" {
  name                = "VN-TF-Modified"
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/16"]

 subnet {
    name           = "nellysubnet"
    address_prefix = "10.0.1.0/24"
  }
  
  subnet {
    name           = "angelnav"
    address_prefix = "10.0.2.0/24"
  }
}


