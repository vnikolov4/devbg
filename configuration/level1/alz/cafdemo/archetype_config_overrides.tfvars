archetype_config_overrides = {
  root = {
    archetype_id = "root"
    parameters = {
      "Allowed-Locations" = {
        "listOfAllowedLocations" = {
          values = ["westeurope", "northeurope"]
        }
      }
      "Deny-RSG-Locations" = {
        "listOfAllowedLocations" = {
          values = ["westeurope", "northeurope"]
        }
      }
      "Deny-Subnet-Without-Nsg" = {
        "effect" = {
          value = "Audit"
        }
      }
      "Deny-Subnet-Without-Udr" = {
        "effect" = {
          value = "Audit"
        }
      }
      "Deploy-ASC-Monitoring" = {
        "aadAuthenticationInSqlServerMonitoringEffect" = {
          value = "Disabled"
        }
        "diskEncryptionMonitoringEffect" = {
          value = "Disabled"
        }
        "encryptionOfAutomationAccountMonitoringEffect" = {
          value = "Disabled"
        }
        "identityDesignateLessThanOwnersMonitoringEffect" = {
          value = "Disabled"
        }
        "identityDesignateMoreThanOneOwnerMonitoringEffect" = {
          value = "Disabled"
        }
        "identityEnableMFAForWritePermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveDeprecatedAccountMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveDeprecatedAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithOwnerPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithReadPermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "identityRemoveExternalAccountWithWritePermissionsMonitoringEffect" = {
          value = "Disabled"
        }
        "jitNetworkAccessMonitoringEffect" = {
          value = "Disabled"
        }
        "networkSecurityGroupsOnSubnetsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlDbEncryptionMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlManagedInstanceAdvancedDataSecurityEmailsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlServerAdvancedDataSecurityEmailAdminsMonitoringEffect" = {
          value = "Disabled"
        }
        "sqlServerAdvancedDataSecurityMonitoringEffect" = {
          value = "Disabled"
        }
        "systemUpdatesMonitoringEffect" = {
          value = "AuditIfNotExists"
        }
        "useRbacRulesMonitoringEffect" = {
          value = "Disabled"
        }
        "vmssSystemUpdatesMonitoringEffect" = {
          value = "Disabled"
        }
        "windowsDefenderExploitGuardMonitoringEffect" = {
          value = "Disabled"
        }
      }
      "Deploy-ASCDF-Config" = {
        "emailSecurityContact" = {
          value = "va.nik@hotmail.com"
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
        "enableAscForKubernetes" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSql" = {
          value = "DeployIfNotExists"
        }
        "enableAscForSqlOnVm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForDns" = {
          value = "DeployIfNotExists"
        }
        "enableAscForArm" = {
          value = "DeployIfNotExists"
        }
        "enableAscForOssDb" = {
          value = "DeployIfNotExists"
        }
        "enableAscForAppServices" = {
          value = "DeployIfNotExists"
        }
        "enableAscForRegistries" = {
          value = "DeployIfNotExists"
        }
        "enableAscForKeyVault" = {
          value = "DeployIfNotExists"
        }
        "enableAscForStorage" = {
          value = "DeployIfNotExists"
        }
        "enableAscForServers" = {
          value = "DeployIfNotExists"
        }
      }
      "Deploy-AzActivity-Log" = {
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-Resource-Diag" = {
        "profileName" = {
          value = "alz-diagnostic-log"
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-WS-Arc-Monitoring" = {
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-VM-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deploy-VMSS-Monitoring" = {
        "logAnalytics_1" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
    }
    access_control = {}
  }

  landing-zones = {
    archetype_id = "landing-zones"
    parameters = {
      "CAF-Deploy-Nsg-FlowLogs" = {
        "effect" = {
          value = "DeployIfNotExists"
        }
        "retention" = {
          value = 5
        }
        "storageAccountResourceId" = {
          lz_key        = "management"
          output_key    = "objects"
          resource_type = "storage_accounts"
          resource_key  = "nsgflogs"
          attribute_key = "id"
        }
        "interval" = {
          value = 60
        }
        "flowAnalyticsEnabled" = {
          value = true
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
      "Deny-Public-Endpoints" = {
        "ACRPublicIpDenyEffect" = {
          value = "Audit"
        }
        "AFSPublicIpDenyEffect" = {
          value = "Audit"
        }
        "AKSPublicIpDenyEffect" = {
          value = "Audit"
        }
        "BatchPublicIpDenyEffect" = {
          value = "Audit"
        }
        "CosmosPublicIpDenyEffect" = {
          value = "Audit"
        }
        "KeyVaultPublicIpDenyEffect" = {
          value = "Audit"
        }
        "MySQLFlexPublicIpDenyEffect" = {
          value = "Audit"
        }
        "PostgreSQLFlexPublicIpDenyEffect" = {
          value = "Audit"
        }
        "SqlServerPublicIpDenyEffect" = {
          value = "Audit"
        }
        "StoragePublicIpDenyEffect" = {
          value = "Audit"
        }
      }
    }
    access_control = {}
  }

  connectivity = {
    archetype_id = "platform_connectivity"
    parameters = {
    }
    access_control = {}
  }

  management = {
    archetype_id = "platform_management"
    parameters = {
    }
    access_control = {}
  }

  identity = {
    archetype_id = "platform_identity"
    parameters = {
    }
    access_control = {}
  }

  decommissioned = {
    archetype_id = "platform_decommissioned"
    parameters = {
    }
    access_control = {}
  }

  platform = {
    archetype_id = "platform"
    parameters = {
      "CAF-Deploy-Nsg-FlowLogs" = {
        "effect" = {
          value = "DeployIfNotExists"
        }
        "retention" = {
          value = 5
        }
        "storageAccountResourceId" = {
          lz_key        = "management"
          output_key    = "objects"
          resource_type = "storage_accounts"
          resource_key  = "nsgflogs"
          attribute_key = "id"
        }
        "interval" = {
          value = 60
        }
        "flowAnalyticsEnabled" = {
          value = true
        }
        "logAnalytics" = {
          lz_key        = "management"
          output_key    = "diagnostics"
          resource_type = "log_analytics"
          resource_key  = "region1"
          attribute_key = "id"
        }
      }
    }
    access_control = {}
  }

  sandboxes = {
    archetype_id = "platform_sandboxes"
    parameters = {
    }
    access_control = {}
  }

}