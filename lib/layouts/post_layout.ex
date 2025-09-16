defmodule RatioPBC.PostLayout do
  use Tableau.Layout, layout: RatioPBC.RootLayout
  use Phoenix.Component

  import Ratio.Components

  def template(assigns) do
    author = Ratio.author(assigns.data, assigns.page.author)
    assigns = Map.put(assigns, :author, author)

    ~H"""
    <!-- Breadcrumb -->
    <section class="bg-white py-4 border-b">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <nav class="flex text-sm">
          <a href="/" class="text-platinum hover:text-sunset">Home</a>
          <span class="mx-2 text-platinum">/</span>
          <a href="/blog" class="text-platinum hover:text-sunset">Blog</a>
          <span class="mx-2 text-platinum">/</span>
          <span class="text-dark-gray">{@page.title}</span>
        </nav>
      </div>
    </section>

    <!-- Article Header -->
    <section class="py-12 bg-white">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-8">
          <div :if={@page[:featured]} class="text-sunset font-medium mb-4">Featured Article</div>
          <h1 class="text-4xl md:text-5xl font-bold text-ink mb-6">
            {@page.title}
          </h1>
          <p class="text-xl text-dark-gray mb-8">
            {@page.description}
          </p>
          <div class="flex items-center justify-center text-sm text-platinum">
            <div class="flex items-center">
              <div class="w-10 h-10 bg-sunset rounded-full mr-3"></div>
              <div class="text-left">
                <div class="text-dark-gray font-medium">
                  {Ratio.author_name(@data, @page.author)}
                </div>
                <div>
                  {Ratio.author_title(@data, @page.author)}
                </div>
              </div>
            </div>
            <span class="mx-4">•</span>
            <span>{Ratio.formatted_date(@page.date)}</span>
            <span class="mx-4">•</span>
            <span>{Ratio.reading_time(@page.body)} min read</span>
          </div>
        </div>
        <div class="w-full h-64 md:h-96 bg-platinum rounded-lg mb-8"></div>
      </div>
    </section>

    <article class="py-8 bg-white">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div id="article_content" class="prose prose-lg max-w-none">
          {{:safe, render(@inner_content)}}
        </div>
        <div class="bg-ink text-white p-6 rounded-lg my-8">
          <h3 class="text-xl font-semibold mb-3">Ready to Build Resilient Systems?</h3>
          <p class="mb-4">
            If your organization is looking to modernize its public health technology infrastructure, we'd love to help. Our team has extensive experience building resilient systems for government agencies and public health organizations.
          </p>
          <a
            href="/contact"
            class="bg-sunset hover:bg-opacity-90 text-white px-6 py-3 rounded-lg font-semibold transition-all inline-block"
          >
            Get In Touch
          </a>
        </div>
      </div>
    </article>

    <!-- Related Posts -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-3xl font-bold text-ink mb-8 text-center">Related Articles</h2>
        <div class="grid md:grid-cols-3 gap-8">
          <.card :for={post <- Ratio.related_posts(@posts, @page)} post={post} data={@data} />
        </div>
      </div>
    </section>

    <!-- Other Posts -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-3xl font-bold text-ink mb-8 text-center">
          Other Articles by {@author["first_name"]}
        </h2>
        <div class="grid md:grid-cols-3 gap-8">
          <.card
            :for={post <- Ratio.posts_by_author_id(@posts, @page.author)}
            post={post}
            data={@data}
          />
        </div>
      </div>
    </section>
    """
  end
end
