defmodule RatioPBC.HomePage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/"

  use Phoenix.Component

  import Ratio.Components

  def template(assigns) do
    ~H"""
    <.hero />
    <.mission />
    <.services services={@data["services"]} />
    <.cta />
    """
  end

  def hero(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-ink to-sunset text-white py-20">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h1 class="text-4xl md:text-6xl font-bold mb-6">
            Building Technology for<br />
            <span class="text-cream">Public Good</span>
          </h1>
          <p class="text-xl md:text-2xl mb-8 max-w-3xl mx-auto opacity-90">
            We create software and data applications that empower public health and human services organizations to serve their communities better.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <a
              href="/services"
              class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all"
            >
              Our Services
            </a>
            <a
              href="/about"
              class="border-2 border-white text-white hover:bg-white hover:text-ink px-8 py-3 rounded-lg font-semibold transition-all"
            >
              Learn More
            </a>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def mission(assigns) do
    ~H"""
    <!-- Mission Section -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Our Mission</h2>
          <p class="text-xl text-dark-gray max-w-3xl mx-auto">
            We believe technology should serve the public interest. Our team builds and operates digital solutions that help government agencies and nonprofits deliver essential services more effectively.
          </p>
        </div>
        <div class="grid md:grid-cols-3 gap-8">
          <div class="text-center p-6">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Reliable Solutions</h3>
            <p class="text-dark-gray">
              We build robust, scalable applications that organizations can depend on for critical operations.
            </p>
          </div>
          <div class="text-center p-6">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Human-Centered</h3>
            <p class="text-dark-gray">
              Every solution we create puts the needs of end users and communities at the center of the design process.
            </p>
          </div>
          <div class="text-center p-6">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M13 10V3L4 14h7v7l9-11h-7z"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Data-Driven</h3>
            <p class="text-dark-gray">
              We leverage data analytics and insights to help organizations make informed decisions and measure impact.
            </p>
          </div>
        </div>
      </div>
    </section>
    """
  end

  def services(assigns) do
    ~H"""
    <!-- Services -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">What We Do</h2>
          <p class="text-xl text-dark-gray">
            Comprehensive technology solutions for public sector organizations
          </p>
        </div>
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div :for={service <- @services} class="bg-white p-6 rounded-lg shadow-sm">
            <h3 class="text-xl font-semibold text-ink mb-3">{service["name"]}</h3>
            <p class="text-dark-gray mb-4">{service["description"]}</p>
            <.service_link
              service={service}
              class="text-sunset hover:text-ink font-medium"
            >
              Learn more →
            </.service_link>
            
          </div>
        </div>
      </div>
    </section>
    """
  end

  def cta(assigns) do
    ~H"""
    <!-- CTA Section -->
    <section class="py-16 bg-ink text-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Ready to Transform Your Operations?</h2>
        <p class="text-xl mb-8 opacity-90">
          Let's discuss how we can help your organization serve your community more effectively.
        </p>
        <a
          href="/contact"
          class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all inline-block"
        >
          Get In Touch
        </a>
      </div>
    </section>
    """
  end
end
