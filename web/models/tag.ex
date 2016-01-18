defmodule AdminDemo.Tag do
  use AdminDemo.Web, :model
  alias AdminDemo.Repo

  schema "tags" do
    field :name, :string

    has_many :posts_tags, AdminDemo.PostTag
    has_many :posts, through: [:posts_tags, :post]

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

  def all, do: Repo.all(__MODULE__)
end
