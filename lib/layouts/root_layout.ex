defmodule RatioPBC.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          {[@page[:title], RatioPBC]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ")}
        </title>

        <link rel="stylesheet" href="/css/site.css" />
      </head>
      <body class="bg-cream text-dark-gray">
        <!-- Navigation -->
        <nav class="bg-white shadow-sm">
          <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between items-center py-4">
              <div class="flex items-center">
                <h1 class="text-2xl font-bold text-ink">Ratio PBC</h1>
              </div>
              <div class="hidden md:flex space-x-8">
                <a href="/" class="text-ink hover:text-sunset font-medium">Home</a>
                <a href="/about" class="text-dark-gray hover:text-sunset">About</a>
                <a href="/services" class="text-dark-gray hover:text-sunset">Services</a>
                <a href="/blog" class="text-dark-gray hover:text-sunset">Blog</a>
                <a href="/contact" class="text-dark-gray hover:text-sunset">Contact</a>
              </div>
              <div class="md:hidden">
                <button class="text-dark-gray hover:text-sunset">
                  <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M4 6h16M4 12h16M4 18h16"
                    >
                    </path>
                  </svg>
                </button>
              </div>
            </div>
          </div>
        </nav>
        
    <!-- Main Content -->
        {render(@inner_content)}
        
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
                  <li><a href="/services" class="hover:text-sunset">Software Development</a></li>
                  <li><a href="/services" class="hover:text-sunset">Data Analytics</a></li>
                  <li><a href="/services" class="hover:text-sunset">System Integration</a></li>
                </ul>
              </div>
              <div>
                <h4 class="font-semibold mb-4">Company</h4>
                <ul class="space-y-2 text-platinum">
                  <li><a href="/about" class="hover:text-sunset">About Us</a></li>
                  <li><a href="/blog" class="hover:text-sunset">Blog</a></li>
                  <li><a href="/contact" class="hover:text-sunset">Contact</a></li>
                </ul>
              </div>
              <div>
                <h4 class="font-semibold mb-4">Connect</h4>
                <ul class="space-y-2 text-platinum">
                  <li><a href="#" class="hover:text-sunset">LinkedIn</a></li>
                  <li><a href="#" class="hover:text-sunset">Twitter</a></li>
                  <li>
                    <a href="mailto:hello@ratiopbc.com" class="hover:text-sunset">
                      hello@ratiopbc.com
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="border-t border-platinum mt-8 pt-8 text-center text-platinum">
              <p>&copy; 2024 Ratio PBC. All rights reserved.</p>
            </div>
          </div>
        </footer>
        <%= if Mix.env() == :dev do %>
          {Phoenix.HTML.raw(Tableau.live_reload(assigns))}
        <% end %>
      </body>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end
end
