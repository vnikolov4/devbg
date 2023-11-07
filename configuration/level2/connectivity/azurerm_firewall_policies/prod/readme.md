
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t vanik.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://cafdemo-kv-co-ygi.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/connectivity/azurerm_firewall_policies/prod \
  -tfstate_subscription_id 2b4776a0-818a-44bf-9477-71ec31487052 \
  -target_subscription 2b4776a0-818a-44bf-9477-71ec31487052 \
  -tfstate connectivity_firewall_policies_prod.tfstate \
  -env Demo \
  -level level2 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connectivity_firewall_policies_prod.tfstate.tfplan \
  -a plan

```

