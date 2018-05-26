defmodule ChatGraphqlBackend.Schema.Types do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: ChatGraphqlBackend.Repo

  object :user do
    field :id, :id
    field :name, :string
    field :messages, list_of(:message), resolve: assoc(:messages)
  end

  object :message do
    field :id, :id
    field :body, :string
    field :user, :user, resolve: assoc(:user)
  end
end