defmodule Whatsgoingon.Router do
  use Whatsgoingon.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Whatsgoingon do
    pipe_through :api

    get "/news", NewController, :index
    get "/news/:id", NewController, :show
    post "/news", NewController, :create
    delete "/news/:id", NewController, :delete
  end
end
