custom_role_definitions = {
  developer_reader = {
    name        = "developer-reader",
    description = "READ-ONLY role to be used by development teams.",
    assignable_scopes = {
      subscriptions = [
        {
          id = "/subscriptions/2b4776a0-818a-44bf-9477-71ec31487052"
        }
      ]
    }
    permissions = {
      actions = [
        "*/read"
      ],
      not_actions      = [],
      data_actions     = [],
      not_data_actions = []
    }
  }
}
