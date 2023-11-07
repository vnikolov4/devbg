landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_vnet_hub"
  global_settings_key = "connectivity_vnet_hub"
  tfstates = {
    connectivity_vnet_hub = {
      tfstate   = "connectivity_vnet_hub.tfstate"
      workspace = "tfstate"
    }
  }
}
