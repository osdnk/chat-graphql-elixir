defmodule ChatGraphqlBackend.MessageResolver do
  alias ChatGraphqlBackend.Repo
  alias ChatGraphqlBackend.Message

  def all(_args, _info) do
    {:ok, Repo.all(Message)}
  end
end