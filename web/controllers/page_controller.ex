defmodule AdminDemo.PageController do
  use AdminDemo.Web, :controller

  def index(conn, _params) do

    render conn, "index.html", something: "Testing..."
  end
end
