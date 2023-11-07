
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription Visual Studio Enterprise Subscription with the user admin.test@vanik.onmicrosoft.com
rover login -t vanik.onmicrosoft.com -s 2b4776a0-818a-44bf-9477-71ec31487052

rover \
  --impersonate-sp-from-keyvault-url https://cafdemo-kv-scp-bme.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 2b4776a0-818a-44bf-9477-71ec31487052 \
  -tfstate platform_subscriptions.tfstate \
  -env Demo \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)