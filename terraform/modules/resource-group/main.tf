
resource "azurerm_resource_group" "main" {
  name     = var.rg_name
  location = var.location
}

output "name" {
  value = azurerm_resource_group.main.name
}

output "location" {
  value = azurerm_resource_group.main.location
}

variable "rg_name" {}
variable "location" {}
        