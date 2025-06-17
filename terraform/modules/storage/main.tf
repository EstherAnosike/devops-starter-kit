
resource "azurerm_storage_account" "main" {
  name                     = var.name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

variable "name" {}
variable "rg_name" {}
variable "location" {}
variable "account_tier" {}
variable "account_replication_type" {}
        