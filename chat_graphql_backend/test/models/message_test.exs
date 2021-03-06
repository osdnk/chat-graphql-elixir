defmodule ChatGraphqlBackend.MessageTest do
  use ChatGraphqlBackend.ModelCase

  alias ChatGraphqlBackend.Message

  @valid_attrs %{body: "some body"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Message.changeset(%Message{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Message.changeset(%Message{}, @invalid_attrs)
    refute changeset.valid?
  end
end
