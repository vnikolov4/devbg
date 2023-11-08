managed_identities = {
  id_region1 = {
    name               = "id-vm"
    resource_group_key = "rgvmregion1"
    tags = {
      Classification = "Private"
      CostCenter     = "N/A"
      Criticality    = "High"
      Email          = "devops-azure@test.com"
      FinancialOwner = "DevOps"
      TechOwner      = "DevOps"
    }
  }
}
