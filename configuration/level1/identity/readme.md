
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t vanik.onmicrosoft.com -s 2b4776a0-818a-44bf-9477-71ec31487052

rover \
  --impersonate-sp-from-keyvault-url https://cafdemo-kv-id-bfx.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 2b4776a0-818a-44bf-9477-71ec31487052 \
  -target_subscription 2b4776a0-818a-44bf-9477-71ec31487052 \
  -tfstate identity.tfstate \
  -env Demo \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
