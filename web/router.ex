defmodule AdminDemo.Router do
  use AdminDemo.Web, :router
  use ExAdmin.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  admin_routes :admin
  
  scope "/", AdminDemo do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    
    resources "/comments", CommentController
  end

  # Other scopes may use custom stacks.
  # scope "/api", AdminDemo do
  #   pipe_through :api
  # end
end
