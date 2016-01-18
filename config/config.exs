# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :admin_demo, AdminDemo.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "TxymPW1X8MfmVTjjRDAow6rtmAt//Do9kQRFTJSJz4TamQUZxqL3YCqIobBxEQFw",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: AdminDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ex_admin,
  repo: AdminDemo.Repo,
  module: AdminDemo,
  modules: [
    AdminDemo.ExAdmin.Dashboard,
    AdminDemo.ExAdmin.Post,
    AdminDemo.ExAdmin.Tag
  ]

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :xain, :quote, "'"
config :xain, :after_callback, &Phoenix.HTML.raw/1

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

