defmodule Whatsgoingon.NewView do
  use Whatsgoingon.Web, :view

  def render("index.json", %{news: news}) do
    %{data: render_many(news, Whatsgoingon.NewView, "new.json")}
  end

  def render("show.json", %{new: new}) do
    %{data: render_one(new, Whatsgoingon.NewView, "new.json")}
  end

  def render("new.json", %{new: new}) do
    %{
      id: new.id,
      source: new.source,
      title: new.title,
      description: new.description,
      url: new.url,
      created_at: new.created_at
    }
  end

end
