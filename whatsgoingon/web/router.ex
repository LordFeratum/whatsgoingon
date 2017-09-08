defmodule Whatsgoingon.Router do
  use Whatsgoingon.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Whatsgoingon do
    pipe_through :api
  end
end
