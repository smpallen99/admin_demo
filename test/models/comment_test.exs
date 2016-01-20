defmodule AdminDemo.CommentTest do
  use AdminDemo.ModelCase

  alias AdminDemo.Comment

  @valid_attrs %{approved: true, body: "some content", show_at: "2010-04-17 14:00:00"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Comment.changeset(%Comment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Comment.changeset(%Comment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
