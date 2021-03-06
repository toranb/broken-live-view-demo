use Mix.Config

# Configure your database
config :shop, Shop.Repo,
  username: "postgres",
  password: "postgres",
  database: "shop_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  port: 5200

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :shop, ShopWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
