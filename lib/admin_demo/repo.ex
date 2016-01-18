defmodule AdminDemo.Repo do
  use Ecto.Repo, otp_app: :admin_demo
  use Scrivener, page_size: 10
end
