
```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t vanik.onmicrosoft.com

rover \
  --impersonate-sp-from-keyvault-url https://cafdemo-kv-scl-mng.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level3 \
  -tfstate_subscription_id 2b4776a0-818a-44bf-9477-71ec31487052 \
  -target_subscription 2b4776a0-818a-44bf-9477-71ec31487052 \
  -tfstate prod_lz_l3.tfstate \
  -env Demo \
  -level level3 \
  -w tfstate \
  -p ${TF_DATA_DIR}/prod_lz_l3.tfstate.tfplan \
  -a plan

```

