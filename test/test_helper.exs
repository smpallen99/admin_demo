ExUnit.start

Mix.Task.run "ecto.create", ~w(-r AdminDemo.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r AdminDemo.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(AdminDemo.Repo)

