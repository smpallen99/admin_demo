defmodule AdminDemo.Post do
  use AdminDemo.Web, :model

  schema "posts" do
    field :name, :string
    field :body, :string
    field :published, :boolean # , default: false

    has_many :posts_tags, AdminDemo.PostTag
    has_many :comments, AdminDemo.Comment
    has_many :tags, through: [:posts_tags, :tag]

    timestamps
  end

  @required_fields ~w(name body published)
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

  def all, do: AdminDemo.Repo.all(__MODULE__)
end
