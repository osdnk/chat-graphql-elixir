defmodule ChatGraphqlBackend.Router do
  use ChatGraphqlBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ChatGraphqlBackend do
    pipe_through :api
  end

  forward "/graphiql", Absinthe.Plug.GraphiQL,
          schema: ChatGraphqlBackend.Schema
end
