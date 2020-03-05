# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config



config :dialyzer_error_web,
  generators: [context_app: :dialyzer_error]

# Configures the endpoint
config :dialyzer_error_web, DialyzerErrorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "A8o+7yQKk7X2As6h4Z0fC7URPqPI40E3MJGT8lCvNn+ATnXBT9GqwXUUwMoIul2J",
  render_errors: [view: DialyzerErrorWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DialyzerErrorWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
