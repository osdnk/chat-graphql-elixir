# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chat_graphql_backend,
  ecto_repos: [ChatGraphqlBackend.Repo]

# Configures the endpoint
config :chat_graphql_backend, ChatGraphqlBackend.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "WRVQH3kYCVrGTs//Jsg28tD+y/zWCgLbWroEmK3TrTXFaENxzkcBbk9is2gvVihR",
  render_errors: [view: ChatGraphqlBackend.ErrorView, accepts: ~w(json)],
  pubsub: [name: ChatGraphqlBackend.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
