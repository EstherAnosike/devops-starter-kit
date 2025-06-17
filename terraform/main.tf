
provider "azurerm" {
  features {}
}

module "resource_group" {
  source     = "./modules/resource-group"
  rg_name    = "starterkit-rg"
  location   = "East US"
}

module "vnet" {
  source         = "./modules/vnet"
  name           = "starterkit-vnet"
  address_space  = ["10.0.0.0/16"]
  rg_name        = module.resource_group.name
  location       = module.resource_group.location
}

module "storage" {
  source                  = "./modules/storage"
  name                    = "starterkitstorage"
  rg_name                 = module.resource_group.name
  location                = module.resource_group.location
  account_tier            = "Standard"
  account_replication_type = "LRS"
}
        