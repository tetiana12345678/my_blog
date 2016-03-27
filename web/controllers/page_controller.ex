defmodule MyBlog.PageController do
  use MyBlog.Web, :controller
  alias MyBlog.Post

  def index(conn, _params) do
    posts = Post
    |> Post.count_comments
    |> Repo.all
    render(conn, "index.html", posts: posts)
    # render conn, "index.html"
  end
end
