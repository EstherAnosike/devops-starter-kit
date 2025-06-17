
module "resource_group" {
  source   = "../../terraform/modules/resource-group"
  rg_name  = "demo-rg"
  location = "East US"
}
        