import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :dialyzer_error_web, DialyzerErrorWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "gCEGTc0tt8rUzk/AueBimq+NNsRWw2++qwYVbWk1s2JEgZmQKaCqFjn73iOG5aD1",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# In test we don't send emails.
config :dialyzer_error, DialyzerError.Mailer, adapter: Swoosh.Adapters.Test

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
