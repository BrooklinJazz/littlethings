# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :little_things,
  ecto_repos: [LittleThings.Repo]

# Configures the endpoint
config :little_things, LittleThingsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MxOF4wqjTfMIyn8IVGrE4wbZBLylBqgaj2092oRZCWXRzl7YCIAXNRWLm/wpae/U",
  render_errors: [view: LittleThingsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LittleThings.PubSub,
  live_view: [signing_salt: "UAZAezzX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
