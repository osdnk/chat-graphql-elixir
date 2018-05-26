defmodule ChatGraphqlBackend.Schema do
  use Absinthe.Schema
  import_types ChatGraphqlBackend.Schema.Types

  query do
    field :messages, list_of(:message) do
      resolve &ChatGraphqlBackend.MessageResolver.all/2
    end

    field :users, list_of(:user) do
      resolve &ChatGraphqlBackend.UserResolver.all/2
    end
    
    field :user, type: :user do
      arg :id, non_null(:id)
      resolve &ChatGraphqlBackend.UserResolver.find/2
    end
  end
end