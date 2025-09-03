defmodule RatioPBC.TeamPage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/team",
    title: "The team at Ratio"

  use Phoenix.Component

  def template(assigns) do
    ~H"""

    <!-- Team Section -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Our Team</h2>
          <p class="text-xl text-dark-gray">Experienced professionals committed to public service</p>
        </div>
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div class="bg-white p-6 rounded-lg text-center">
            <div class="w-24 h-24 bg-platinum rounded-full mx-auto mb-4"></div>
            <h3 class="text-xl font-semibold text-ink mb-2">Sarah Chen</h3>
            <p class="text-sunset font-medium mb-2">CEO & Co-Founder</p>
            <p class="text-dark-gray text-sm">
              Former public health data analyst with 10+ years experience in government technology.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg text-center">
            <div class="w-24 h-24 bg-platinum rounded-full mx-auto mb-4"></div>
            <h3 class="text-xl font-semibold text-ink mb-2">Marcus Rodriguez</h3>
            <p class="text-sunset font-medium mb-2">CTO & Co-Founder</p>
            <p class="text-dark-gray text-sm">
              Software architect specializing in scalable systems for social impact organizations.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg text-center">
            <div class="w-24 h-24 bg-platinum rounded-full mx-auto mb-4"></div>
            <h3 class="text-xl font-semibold text-ink mb-2">Dr. Aisha Patel</h3>
            <p class="text-sunset font-medium mb-2">Head of Product</p>
            <p class="text-dark-gray text-sm">
              Public health researcher and UX designer focused on human-centered design.
            </p>
          </div>
        </div>
      </div>
    </section>
    """
  end
end
