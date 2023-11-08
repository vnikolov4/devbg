landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_vnet_hub"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
