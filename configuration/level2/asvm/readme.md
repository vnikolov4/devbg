# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t vanik.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  --impersonate-sp-from-keyvault-url https://cafdemo-kv-idl0-rkp.vault.azure.net/ \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 2b4776a0-818a-44bf-9477-71ec31487052 \
  -target_subscription 2b4776a0-818a-44bf-9477-71ec31487052 \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env Demo \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

