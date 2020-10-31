# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ptests,
  ecto_repos: [Ptests.Repo]

# Configures the endpoint
config :ptests, PtestsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2IeNJrLsPCQV/x0ARQzuAkU7CgwbX9FcmUJ+n6uQ4O58DprwCYc+miJk8mD3rDCv",
  render_errors: [view: PtestsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ptests.PubSub,
  live_view: [signing_salt: "MjWVU62l"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
