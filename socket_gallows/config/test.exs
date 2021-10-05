import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :socket_gallows, SocketGallowsWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QlOeZqZf0ENRL1m34jhhFMi7vCvb8ORs+grAJ5xWMQCanRyqsoIQLAyaKaMuE870",
  server: false

# In test we don't send emails.
config :socket_gallows, SocketGallows.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
