defmodule Whatsgoingon.New do
  use Whatsgoingon.Web, :model

    @timestamps_opts [type: :utc_datetime, usec: true]
    
    schema "news" do
      field :source, :string
      field :title, :string
      field :corpus, :string
      field :created_at, :utc_datetime
      timestamps()
    end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:source, :title, :corpus, :created_at])
    |> validate_required([:created_at])
  end

end
