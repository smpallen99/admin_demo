defmodule AdminDemo.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :string
      add :approved, :boolean, default: false
      add :show_at, :datetime
      add :posts_id, references(:posts, on_delete: :nothing)

      timestamps
    end
    create index(:comments, [:posts_id])

  end
end
