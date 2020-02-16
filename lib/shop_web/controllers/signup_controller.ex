defmodule ShopWeb.SignupController do
  use ShopWeb, :controller

  alias ShopWeb.Live.Signup

  def index(conn, _params) do
    Phoenix.LiveView.Controller.live_render(conn, Signup,
      session: %{
        "membership_id" => "PERSONAL"
      }
    )
  end
end
