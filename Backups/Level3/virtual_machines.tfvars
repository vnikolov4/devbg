virtual_machines = {
  vm1 = {
    resource_group_key                   = "rgvmregion1"
    os_type                              = "windows"
    keyvault_key                         = "vmkv"
    boot_diagnostics_storage_account_key = ""

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      eth0 = {
        vnet_key                = "vnet_region1"
        subnet_key              = "default_subnet"
        name                    = "eth0"
        enable_ip_forwarding    = false
        internal_dns_name_label = "eth0"

      }
    }

    virtual_machine_settings = {
      windows = {
        name                       = "vm01"
        size                       = "Standard_D2s_v3"
        admin_username             = "adminuser"
        admin_password             = "https://cafdemo-kv-vmkv-qng.vault.azure.net/secrets/password-admin"
        encryption_at_host_enabled = true
        network_interface_keys     = ["eth0"]

        os_disk = {
          name                 = "diskvm01"
          disk_size_gb         = "175"
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
        }
        identity = {
          type                  = "UserAssigned"
          managed_identity_keys = ["id_region1"]
        }
        source_image_reference = {
          publisher = "MicrosoftWindowsServer"
          offer     = "WindowsServer"
          sku       = "2022-Datacenter-azure-edition"
          version   = "latest"
        }
      }
    }
  }
}
