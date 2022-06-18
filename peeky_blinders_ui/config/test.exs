import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :peeky_blinders_ui, PeekyBlindersUiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ZFT0Jl2m+js+/43z94WamZbVqGnEYNpm2E7IbJYJOJAZeFelYaq/3GmiGEfWzfw7",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
