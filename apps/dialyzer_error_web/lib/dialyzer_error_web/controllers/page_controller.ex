defmodule DialyzerErrorWeb.PageController do
  use DialyzerErrorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
