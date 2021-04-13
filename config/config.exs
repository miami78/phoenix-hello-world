# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :helloWorld,
  ecto_repos: [HelloWorld.Repo]

# Configures the endpoint
config :helloWorld, HelloWorldWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fvZzPm3id7J96M1u5Kl1SlxqeuQEk9Kvx/n+VHULbz0Xisc046MOpFdD/64kEy5J",
  render_errors: [view: HelloWorldWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: HelloWorld.PubSub,
  live_view: [signing_salt: "MCye9jAd"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
