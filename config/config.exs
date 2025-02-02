# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dj_api,
  namespace: MyApp,
  ecto_repos: [MyApp.Repo],
  generators: [binary_id: true]

# Add support for microseconds at the DB level
# this avoids having to configure it on every migration file
config :dj_api, MyApp.Repo, migration_timestamps: [type: :utc_datetime_usec]
# Configures the endpoint
config :dj_api, MyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "v2pfRxUFFVl+F+DkAFcNPHpEOxHt80tnLI66lBHCGVIPrQ1VRXzTbWwufvM/bKRS",
  render_errors: [view: MyAppWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: MyApp.PubSub,
  live_view: [signing_salt: "RBBr36RV"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
