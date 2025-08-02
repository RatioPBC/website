defmodule RatioPBC.PostLayout do
  use Tableau.Layout, layout: RatioPBC.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!-- Breadcrumb -->
    <section class="bg-white py-4 border-b">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <nav class="flex text-sm">
          <a href="index.html" class="text-platinum hover:text-sunset">Home</a>
          <span class="mx-2 text-platinum">/</span>
          <a href="blog.html" class="text-platinum hover:text-sunset">Blog</a>
          <span class="mx-2 text-platinum">/</span>
          <span class="text-dark-gray">Building Resilient Public Health Systems</span>
        </nav>
      </div>
    </section>

    <!-- Article Header -->
    <section class="py-12 bg-white">
        <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="text-center mb-8">
                <div class="text-sunset font-medium mb-4">Featured Article</div>
                <h1 class="text-4xl md:text-5xl font-bold text-ink mb-6">
                    Building Resilient Public Health Systems: Lessons from the Pandemic
                </h1>
                <p class="text-xl text-dark-gray mb-8">
                    The COVID-19 pandemic exposed critical gaps in public health infrastructure. Here's how modern technology can help build more resilient systems that better serve communities in times of crisis.
                </p>
                <div class="flex items-center justify-center text-sm text-platinum">
                    <div class="flex items-center">
                        <div class="w-10 h-10 bg-sunset rounded-full mr-3"></div>
                        <div class="text-left">
                <div class="text-dark-gray font-medium"><%= Map.fetch!(@data["site"]["authors"], @page.author) |> Map.fetch!("name") %></div>
                            <div>CEO & Co-Founder</div>
                        </div>
                    </div>
                    <span class="mx-4">•</span>
                    <span>December 15, 2024</span>
                    <span class="mx-4">•</span>
                    <span>8 min read</span>
                </div>
            </div>
            <div class="w-full h-64 md:h-96 bg-platinum rounded-lg mb-8"></div>
        </div>
    </section>

    {{:safe, render(@inner_content)}}

    <!-- Related Posts -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-3xl font-bold text-ink mb-8 text-center">Related Articles</h2>
        <div class="grid md:grid-cols-3 gap-8">
          <article class="bg-white rounded-lg overflow-hidden shadow-sm">
            <div class="h-48 bg-platinum"></div>
            <div class="p-6">
              <div class="text-sm text-sunset font-medium mb-2">Technology</div>
              <h3 class="text-xl font-semibold text-ink mb-3">
                <a href="#" class="hover:text-sunset transition-colors">
                  The Future of Government Data Analytics
                </a>
              </h3>
              <p class="text-dark-gray mb-4">
                How artificial intelligence and machine learning are transforming how public agencies analyze and act on data.
              </p>
            </div>
          </article>

          <article class="bg-white rounded-lg overflow-hidden shadow-sm">
            <div class="h-48 bg-platinum"></div>
            <div class="p-6">
              <div class="text-sm text-sunset font-medium mb-2">Best Practices</div>
              <h3 class="text-xl font-semibold text-ink mb-3">
                <a href="#" class="hover:text-sunset transition-colors">
                  User-Centered Design in Government Technology
                </a>
              </h3>
              <p class="text-dark-gray mb-4">
                Why putting users first is essential for successful public sector technology projects.
              </p>
            </div>
          </article>

          <article class="bg-white rounded-lg overflow-hidden shadow-sm">
            <div class="h-48 bg-platinum"></div>
            <div class="p-6">
              <div class="text-sm text-sunset font-medium mb-2">Data Privacy</div>
              <h3 class="text-xl font-semibold text-ink mb-3">
                <a href="#" class="hover:text-sunset transition-colors">
                  Protecting Sensitive Data in Public Health Systems
                </a>
              </h3>
              <p class="text-dark-gray mb-4">
                Best practices for maintaining privacy and security while enabling data-driven decision making.
              </p>
            </div>
          </article>
        </div>
      </div>
    </section>
    """
  end
end
