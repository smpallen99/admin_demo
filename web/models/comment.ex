defmodule AdminDemo.Comment do
  use AdminDemo.Web, :model

  schema "comments" do
    field :body, :string
    field :approved, :boolean, default: false
    field :show_at, Ecto.DateTime
    belongs_to :posts, AdminDemo.Posts

    timestamps
  end

  @required_fields ~w(body approved show_at)
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
end
