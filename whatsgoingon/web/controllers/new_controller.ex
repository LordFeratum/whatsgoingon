  require Logger
  defmodule Whatsgoingon.NewController do
  use Whatsgoingon.Web, :controller

  alias Whatsgoingon.{Repo, New, ErrorView}
  alias Plug.Conn

  def index(conn, _params) do
    news = Repo.all(New)
    render(conn, "index.json", news: news)
  end

  def show(conn, %{"id" => id}) do
    with new = %New{} <- Repo.get(New, id) do
      render(conn, "show.json", new: new)
    else
      nil ->
        conn
        |> put_status(404)
        |> render(ErrorView, "404.json", error: "Not found")
    end
  end

  def create(conn, params) do
    params = Map.put(params, "created_at", DateTime.utc_now)
    changeset = New.changeset(%New{}, params)
    with {:ok, new} <- Repo.insert(changeset) do
      conn
      |> Conn.put_status(201)
      |> render("show.json", new: new)
    else
      {:error, %{errors: errors}} ->
        conn
        |> put_status(400)
        |> render(ErrorView, "400.json", %{errors: errors})
    end
  end

  def delete(conn, %{"id" => id}) do
    with new = %New{} <- Repo.get(New, id) do
      Repo.delete!(new)
      conn
      |> Conn.put_status(204)
      |> Conn.send_resp(:no_content, "")
    else
      nil ->
        conn
        |> put_status(404)
        |> render(ErrorView, "404.json", error: "Not found")
    end
  end

end
