defmodule RatioPBC.BlogPage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/blog"

  use Phoenix.Component

  import Ratio.Components

  def template(assigns) do
    ~H"""
    <.hero />

    <!-- <.featured_post /> -->

    <!-- Blog Posts Grid -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <.card :for={post <- @posts} post={post} data={@data} />
        </div>
        
    <!-- <.pagination /> -->
      </div>
    </section>
    """
  end

  def hero(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-ink to-sunset text-white py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h1 class="text-4xl md:text-5xl font-bold mb-6">Insights & Updates</h1>
          <p class="text-xl md:text-2xl max-w-3xl mx-auto opacity-90">
            Thoughts on technology, public service, and building better systems for communities.
          </p>
        </div>
      </div>
    </section>
    """
  end

  def featured_post(assigns) do
    ~H"""
    <!-- Featured Post -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="mb-8">
          <span class="text-sunset font-medium">Featured Post</span>
        </div>
        <div class="grid lg:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">
              <a href="post.html" class="hover:text-sunset transition-colors">
                Building Resilient Public Health Systems: Lessons from the Pandemic
              </a>
            </h2>
            <p class="text-lg text-dark-gray mb-6">
              The COVID-19 pandemic exposed critical gaps in public health infrastructure. Here's how modern technology can help build more resilient systems that better serve communities in times of crisis.
            </p>
            <div class="flex items-center text-sm text-platinum mb-6">
              <span>Sarah Chen</span>
              <span class="mx-2">•</span>
              <span>December 15, 2024</span>
              <span class="mx-2">•</span>
              <span>8 min read</span>
            </div>
            <a
              href="post.html"
              class="inline-flex items-center text-sunset hover:text-ink font-medium"
            >
              Read full article
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7">
                </path>
              </svg>
            </a>
          </div>
          <div class="bg-cream p-8 rounded-lg">
            <div class="w-full h-64 bg-platinum rounded-lg"></div>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def pagination(assigns) do
    ~H"""
    <!-- Pagination -->
    <div class="flex justify-center mt-12">
      <nav class="flex space-x-2">
        <button class="px-4 py-2 text-platinum hover:text-ink">Previous</button>
        <button class="px-4 py-2 bg-sunset text-white rounded">1</button>
        <button class="px-4 py-2 text-dark-gray hover:text-ink">2</button>
        <button class="px-4 py-2 text-dark-gray hover:text-ink">3</button>
        <button class="px-4 py-2 text-dark-gray hover:text-ink">Next</button>
      </nav>
    </div>
    """
  end

  def newsletter(assigns) do
    ~H"""
    <!-- Newsletter Signup -->
    <section class="py-16 bg-ink text-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Stay Updated</h2>
        <p class="text-xl mb-8 opacity-90">
          Get the latest insights on public sector technology delivered to your inbox.
        </p>
        <div class="max-w-md mx-auto flex gap-4">
          <input
            type="email"
            placeholder="Enter your email"
            class="flex-1 px-4 py-3 rounded-lg text-dark-gray"
          />
          <button class="bg-sunset hover:bg-opacity-90 text-white px-6 py-3 rounded-lg font-semibold transition-all">
            Subscribe
          </button>
        </div>
      </div>
    </section>
    """
  end
end
