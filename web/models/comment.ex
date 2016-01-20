defmodule AdminDemo.Comment do
  use AdminDemo.Web, :model
  require Logger

  schema "comments" do
    field :body, :string
    field :approved, :boolean, default: false
    field :show_at, Ecto.DateTime
    belongs_to :post, AdminDemo.Post

    timestamps
  end

  @required_fields ~w(body approved)
  @optional_fields ~w(show_at post_id)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    Logger.debug "changeset: params: #{inspect params}, model: #{inspect model}"
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
