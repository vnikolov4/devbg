
keyvaults = {
  vmkv = {
    name                      = "vmkv"
    resource_group_key        = "rgvmregion1"
    sku_name                  = "standard"
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "Demo"
    }

  }

}
