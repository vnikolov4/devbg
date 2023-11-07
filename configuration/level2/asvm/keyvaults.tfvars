
keyvaults = {
  level3 = {
    name               = "l3"
    resource_group_key = "level3"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "Demo"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "202df9f9-ee51-4a10-a6a4-1e9d309888f1"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "84b54935-8409-4e34-93f2-90294f0624e4"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "986c9957-dd36-43ce-9449-a6e1570d1487"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

  level4 = {
    name               = "l4"
    resource_group_key = "level4"
    sku_name           = "standard"
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "Demo"
    }

    creation_policies = {
      subscription_creation_landingzones = {
        object_id          = "202df9f9-ee51-4a10-a6a4-1e9d309888f1"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_non_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_non_prod"
        secret_permissions = ["Get"]
      }
      caf_ac_landingzone_maintainers_prod = {
        azuread_group_key  = "caf_ac_landingzone_maintainers_prod"
        secret_permissions = ["Get"]
      }
      level0 = {
        object_id          = "84b54935-8409-4e34-93f2-90294f0624e4"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      caf_platform_maintainers = {
        object_id          = "986c9957-dd36-43ce-9449-a6e1570d1487"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }

  }

}
