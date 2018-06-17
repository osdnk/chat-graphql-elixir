defmodule ChatGraphqlBackend.MessageResolver do
  alias ChatGraphqlBackend.Message
    alias ChatGraphqlBackend.Repo

  def all(_args, _info) do
    {:ok, Repo.all(Message)}
  end
  def create_message(_root, args, _info) do
    case Message.insert(args) do
      {:ok, link} ->
        {:ok, link}
      _error ->
        {:error, "could not create link"}
    end
  end
end