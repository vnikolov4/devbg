#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2b4776a0-818a-44bf-9477-71ec31487052"
  }
  identity = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2b4776a0-818a-44bf-9477-71ec31487052"
  }
  connectivity = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2b4776a0-818a-44bf-9477-71ec31487052"
  }
  management = {
    name            = "Visual Studio Enterprise Subscription"
    create_alias    = false
    subscription_id = "2b4776a0-818a-44bf-9477-71ec31487052"
  }
}