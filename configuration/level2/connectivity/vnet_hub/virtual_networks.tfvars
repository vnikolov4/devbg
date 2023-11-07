vnets = {
  vnet_region1 = {
    resource_group_key = "netregion1"
    vnet = {
      name          = "vnet-we-01"
      address_space = ["10.16.0.0/16"]
    }

    subnets = {
      default_subnet = {
        name = "sn-we-default"
        cidr = ["10.16.1.0/24"]
        service_endpoints = [
          "Microsoft.Storage",
          "Microsoft.KeyVault"
        ]
      }
      private_endpoints = {
        name = "sn-we-pe-01"
        cidr = ["10.16.3.0/24"]
      }
    }
  }
}
