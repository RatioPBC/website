defmodule RatioPBC.HomePage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <p>
      hello, world!
    </p>
    """
  end
end
