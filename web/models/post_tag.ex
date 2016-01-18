defmodule AdminDemo.PostTag do
  use AdminDemo.Web, :model

  schema "posts_tags" do
    belongs_to :post, AdminDemo.Post, foreign_key: :post_id
    belongs_to :tag, AdminDemo.Tag, foreign_key: :tag_id
  end

  # @required_fields ~w()
  # @optional_fields ~w()

  # @doc """
  # Creates a changeset based on the `model` and `params`.

  # If no params are provided, an invalid changeset is returned
  # with no validation performed.
  # """
  # def changeset(model, params \\ :empty) do
  #   model
  #   |> cast(params, @required_fields, @optional_fields)
  # end
end
