defmodule Whatsgoingon.Repo.Migrations.New do
  use Ecto.Migration

  def change do
    create_table(:news) do:
      add :source, :string
      add :title, :string
      add :corpus, :string
      add :created_at, :utc_datetime
      timestamps()
    end
  end
end
