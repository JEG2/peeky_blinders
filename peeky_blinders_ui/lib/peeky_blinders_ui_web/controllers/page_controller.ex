defmodule PeekyBlindersUiWeb.PageController do
  use PeekyBlindersUiWeb, :controller

  @command_interpreter Application.compile_env!(
                         :peeky_blinders_ui,
                         :command_interpreter
                       )

  def index(conn, %{"command" => command}) do
    {m, f, a} = @command_interpreter
    result = apply(m, f, [command | a])

    conn
    |> put_flash(:info, result)
    |> redirect(to: Routes.page_path(conn, :index))
  end

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
