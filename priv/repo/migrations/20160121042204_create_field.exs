defmodule AdminDemo.Repo.Migrations.CreateField do
  use Ecto.Migration

  def change do
    create table(:fields) do
      add :string_field, :string
      add :uuid_field, :uuid
      add :datetime_field, :datetime
      add :date_field, :date
      add :time_field, :time
      add :text_field, :text

      add :steve_id, :integer, unsigned: true 
      timestamps
    end

  end
end
