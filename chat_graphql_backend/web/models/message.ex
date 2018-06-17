defmodule ChatGraphqlBackend.Message do
  alias ChatGraphqlBackend.Message
  alias ChatGraphqlBackend.Repo
  use ChatGraphqlBackend.Web, :model

  schema "messages" do
    field :body, :string
    belongs_to :user, ChatGraphqlBackend.User, foreign_key: :user_id
    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:body, :user_id])
    |> validate_required([:body, :user_id])
    |> foreign_key_constraint(:user_id)
  end

  def insert(message_params) do
    changeset = Message.changeset(%Message{}, message_params)

    case Repo.insert(changeset) do
      {:ok, teacher} ->
        {:ok, teacher}

      {:error, changeset} ->
        {:error, :operation_failed}
    end
  end
end
