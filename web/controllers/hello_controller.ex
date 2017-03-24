defmodule Hello.HelloController do
  use Hello.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"name" => "marc"}) do
    render conn, "show.html", name: "marc the big boss"
  end

  def show(conn, %{"name" => name}) do
    render conn, "show.html", name: name
  end
end
