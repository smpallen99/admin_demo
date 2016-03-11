defmodule AdminDemo.FieldTest do
  use AdminDemo.ModelCase

  alias AdminDemo.Field

  @valid_attrs %{date_field: "2010-04-17", datetime_field: "2010-04-17 14:00:00", string_field: "some content", text_field: "some content", time_field: "14:00:00", uuid_field: "7488a646-e31f-11e4-aace-600308960662"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Field.changeset(%Field{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Field.changeset(%Field{}, @invalid_attrs)
    refute changeset.valid?
  end
end
