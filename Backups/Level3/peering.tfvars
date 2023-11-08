
vnet_peerings = {
  spoke_vnet_TO_hub_vnet_region1 = {
    name = "spoke_vnet_TO_hub_vnet_region1"
    from = {
      vnet_key = "vnet_region1"
    }
    to = {
      lz_key   = "connectivity_vnet_hub"
      vnet_key = "vnet_region1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }
  hub_vnet_region1_TO_spoke_vnet_hub = {
    name = "hub_vnet_region1_TO_spoke_vnet_hub"
    from = {
      lz_key   = "connectivity_vnet_hub"
      vnet_key = "vnet_region1"
    }
    to = {
      vnet_key = "vnet_region1"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }
}
