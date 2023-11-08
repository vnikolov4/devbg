vnets = {
  vnet_region1 = {
    resource_group_key = "netregion1"
    vnet = {
      name          = "spoke-vnet-we-01"
      address_space = ["10.17.0.0/16"]
    }

    subnets = {
      default_subnet = {
        name = "sn-we-default"
        cidr = ["10.17.1.0/24"]
        service_endpoints = [
          "Microsoft.Storage",
          "Microsoft.KeyVault"
        ]
      }
    }
  }
}
