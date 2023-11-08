role_mapping = {
  built_in_role_mapping = {
    keyvaults = {
      vmkv = {
        "Key Vault Crypto Officer" = {
          object_ids = {
            keys = ["8e7109c9-ee0c-4411-badf-3bd884940ef8"]
          }
          managed_identities = {
            keys = ["id_region1"]
          }
        }
        "Key Vault Secrets Officer" = {
          object_ids = {
            keys = ["8e7109c9-ee0c-4411-badf-3bd884940ef8"]
          }
          managed_identities = {
            keys = ["id_region1"]
          }
        }
        "Key Vault Administrator" = {
          object_ids = {
            keys = ["202df9f9-ee51-4a10-a6a4-1e9d309888f1"]
          }
        }
      }
    }
  }
}
