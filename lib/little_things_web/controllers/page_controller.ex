defmodule LittleThingsWeb.PageController do
  use LittleThingsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
