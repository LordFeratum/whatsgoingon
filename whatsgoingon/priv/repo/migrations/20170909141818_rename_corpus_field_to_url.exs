defmodule Whatsgoingon.Repo.Migrations.RenameCorpusFieldToUrl do
  use Ecto.Migration

  def change do
    rename table(:news), :corpus, to: :url
  end
end
