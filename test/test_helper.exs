ExUnit.start

Mix.Task.run "ecto.create", ~w(-r MyBlog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r MyBlog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(MyBlog.Repo)

