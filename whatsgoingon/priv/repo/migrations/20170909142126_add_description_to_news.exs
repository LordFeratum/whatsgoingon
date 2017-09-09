defmodule Whatsgoingon.Repo.Migrations.AddDescriptionToNews do
  use Ecto.Migration

  def change do
    alter table(:news) do
      add :description, :text
    end
  end

end
