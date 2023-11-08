landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "prod_lz_l3"
  global_settings_key = "connectivity_vnet_hub"
  tfstates = {
    connectivity_vnet_hub = {
      tfstate   = "connectivity_vnet_hub.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
