dynamic_keyvault_secrets = {
  vmkv = {
    admin_password = {
      secret_name = "password-admin"
      value       = "dynamic"
      config = {
        length           = 25
        special          = true
        override_special = "_!@"
      }
      expiration_date = "2028-12-31T23:59:59Z"
    }
  }
}
