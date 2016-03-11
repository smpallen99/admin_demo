defmodule AdminDemo.Field do
  use AdminDemo.Web, :model

  schema "fields" do
    field :string_field, :string
    field :uuid_field, Ecto.UUID
    field :datetime_field, Ecto.DateTime
    field :date_field, Ecto.Date
    field :time_field, Ecto.Time
    field :text_field, :string

    timestamps
  end

  @required_fields ~w(datetime_field date_field time_field)
  @optional_fields ~w(string_field uuid_field text_field)

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
