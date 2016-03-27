defmodule MyBlog.PageController do
  use MyBlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
