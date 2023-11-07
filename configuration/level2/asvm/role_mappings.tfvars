
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      level3 = {
        "Reader" = {
          object_ids = {
            keys = [
              "986c9957-dd36-43ce-9449-a6e1570d1487", // caf_platform_maintainers
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
      level4 = {
        "Reader" = {
          object_ids = {
            keys = [
              "986c9957-dd36-43ce-9449-a6e1570d1487", // caf_platform_maintainers
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1"  // subscription_creation_landingzones
            ]
          }
          azuread_groups = {
            keys = [
              "caf_ac_landingzone_maintainers_non_prod",
              "caf_ac_landingzone_maintainers_prod"
            ]
          }
        }
      }
    }

    storage_accounts = {
      level3 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "986c9957-dd36-43ce-9449-a6e1570d1487", // caf_platform_maintainers
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1" // subscription_creation_landingzones
            ]
          }
        }
      }

      level4 = {
        "Storage Blob Data Contributor" = {
          object_ids = {
            keys = [
              "986c9957-dd36-43ce-9449-a6e1570d1487", // caf_platform_maintainers
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1"  // subscription_creation_landingzones
            ]
          }
        }
        "Owner" = {
          object_ids = {
            keys = [
              "202df9f9-ee51-4a10-a6a4-1e9d309888f1" // subscription_creation_landingzones
            ]
          }
        }
      }

    }
  }
}
