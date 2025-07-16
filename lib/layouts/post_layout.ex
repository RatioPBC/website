defmodule RatioPBC.PostLayout do
  use Tableau.Layout, layout: RatioPBC.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <%= {:safe, render(@inner_content)} %>
    """
  end
end
