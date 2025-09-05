defmodule RatioPBC.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  import Ratio.Components

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          {["Ratio PBC", @page[:title]]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ")}
        </title>

        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link rel="stylesheet" href="/css/site.css" />
        <link rel="icon" href="/favicon.ico" />
      </head>
      <body class="bg-cream text-dark-gray font-pt-sans">
        <.nav pages={Ratio.all_pages(@data)} />
        {render(@inner_content)}
        <.footer
          external_links={@data["site"]["external_links"]}
          services={@data["services"]}
          company_links={Ratio.pages_by_names(@data, ["About", "Blog", "Contact"])}
        />

        <%= if Mix.env() == :dev do %>
          {Phoenix.HTML.raw(Tableau.live_reload(assigns))}
        <% end %>
      </body>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end

  def nav(assigns) do
    ~H"""
    <!-- Navigation -->
    <nav class="bg-white shadow-sm">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center py-4">
          <div class="flex items-center">
            <h1 class="text-2xl font-league-spartan font-bold text-ink">Ratio PBC</h1>
          </div>
          <div class="hidden md:flex space-x-8">
            <.link
              :for={page <- @pages}
              navigate={page["path"]}
              rel="prefetch"
              class="hover:text-sunset"
            >
              {page["name"]}
            </.link>
            <a href={"mailto:" <> Ratio.email()} class="hover:text-sunset">Contact</a>
          </div>
          <div class="md:hidden">
            <ul>
              <li :for={page <- @pages}>
                <.link navigate={page["path"]}>{page["name"]}</.link>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
    """
  end

  def footer(assigns) do
    ~H"""
    <!-- Footer -->
    <footer class="bg-dark-gray text-white py-12">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid md:grid-cols-4 gap-8">
          <div>
            <h3 class="text-xl font-bold mb-4">Ratio PBC</h3>
            <p class="text-platinum">Building technology for public good.</p>
          </div>
          <div>
            <h4 class="font-semibold mb-4">Services</h4>
            <ul class="space-y-2 text-platinum">
              <li :for={service <- @services}>
                <.service_link service={service} class="hover:text-sunset">
                  {service["name"]}
                </.service_link>
              </li>
            </ul>
          </div>
          <div>
            <h4 class="font-semibold mb-4">Company</h4>
            <ul class="space-y-2 text-platinum">
              <li :for={link <- @company_links}>
                <.link navigate={link["path"]} class="hover:text-sunset">
                  {link["name"]}
                </.link>
              </li>
            </ul>
          </div>
          <div>
            <h4 class="font-semibold mb-4">Connect</h4>
            <ul class="space-y-2 text-platinum">
              <li :for={link <- @external_links}>
                <a href={link["url"]} class="hover:text-sunset">{link["name"]}</a>
              </li>
              <li>
                <a href={"mailto:" <> Ratio.email()} class="hover:text-sunset">{Ratio.email()}</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="border-t border-platinum mt-8 pt-8 text-center text-platinum">
          <.copyright />
        </div>
      </div>
    </footer>
    """
  end

  defp copyright(assigns) do
    assigns = Map.put(assigns, :year, Date.utc_today().year)

    ~H"""
    <p>&copy; {@year} Ratio PBC, Inc. All rights reserved.</p>
    """
  end
end
