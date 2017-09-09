defmodule Whatsgoingon.Repo.Migrations.AddImageToNews do
  use Ecto.Migration

  def change do
    alter table (:news) do
      add :image, :text
    end
  end

end
