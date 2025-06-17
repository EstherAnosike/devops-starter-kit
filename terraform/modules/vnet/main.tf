
resource "azurerm_virtual_network" "main" {
  name                = var.name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg_name
}

variable "name" {}
variable "address_space" {
  type = list(string)
}
variable "location" {}
variable "rg_name" {}
        