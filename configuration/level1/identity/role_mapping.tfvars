role_mapping = {
  custom_role_mapping = {
    subscriptions = {
      launchpad = {
        lz_key = "subscriptions"
        developer_reader = {
          azuread_groups = {
            keys = ["devops-nonprod-ro"]
          }
        }
      }
    }
  }
}