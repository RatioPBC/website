defmodule RatioPBC.AboutPage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/about"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-ink text-white py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h1 class="text-4xl md:text-5xl font-bold mb-6">About Ratio PBC</h1>
          <p class="text-xl md:text-2xl max-w-3xl mx-auto opacity-90">
            We're a public benefit corporation dedicated to building technology that serves the common good.
          </p>
        </div>
      </div>
    </section>

    <!-- Story Section -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-12 items-center">
          <div>
            <h2 class="text-3xl md:text-4xl font-bold text-ink mb-6">Our Story</h2>
            <p class="text-lg text-dark-gray mb-6">
              Ratio PBC was founded on the belief that technology should serve everyone, not just those who can afford premium solutions. We saw too many public health and human services organizations struggling with outdated systems, fragmented data, and limited resources.
            </p>
            <p class="text-lg text-dark-gray mb-6">
              As a public benefit corporation, we're legally committed to balancing profit with purpose. This structure allows us to prioritize long-term impact over short-term gains, ensuring our solutions truly serve the communities that need them most.
            </p>
            <p class="text-lg text-dark-gray">
              Today, we work with organizations across the country to modernize their operations, improve service delivery, and make data-driven decisions that benefit the people they serve.
            </p>
          </div>
          <div class="bg-cream p-8 rounded-lg">
            <h3 class="text-2xl font-bold text-ink mb-4">Our Values</h3>
            <ul class="space-y-4">
              <li class="flex items-start">
                <div class="w-6 h-6 bg-sunset rounded-full flex-shrink-0 mt-1 mr-3"></div>
                <div>
                  <h4 class="font-semibold text-ink">Public Service</h4>
                  <p class="text-dark-gray">
                    We exist to serve the public interest and strengthen communities.
                  </p>
                </div>
              </li>
              <li class="flex items-start">
                <div class="w-6 h-6 bg-sunset rounded-full flex-shrink-0 mt-1 mr-3"></div>
                <div>
                  <h4 class="font-semibold text-ink">Equity & Access</h4>
                  <p class="text-dark-gray">
                    Technology should be accessible and inclusive for all users.
                  </p>
                </div>
              </li>
              <li class="flex items-start">
                <div class="w-6 h-6 bg-sunset rounded-full flex-shrink-0 mt-1 mr-3"></div>
                <div>
                  <h4 class="font-semibold text-ink">Transparency</h4>
                  <p class="text-dark-gray">
                    We operate with openness and accountability in all we do.
                  </p>
                </div>
              </li>
              <li class="flex items-start">
                <div class="w-6 h-6 bg-sunset rounded-full flex-shrink-0 mt-1 mr-3"></div>
                <div>
                  <h4 class="font-semibold text-ink">Collaboration</h4>
                  <p class="text-dark-gray">
                    The best solutions emerge from working together with our partners.
                  </p>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Team Section -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Our Team</h2>
          <p class="text-xl text-dark-gray">Experienced professionals committed to public service</p>
        </div>
        <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
          <div :for={person <- Ratio.people(@data)} class="bg-white p-6 rounded-lg text-center">
            <div class="w-24 h-24 bg-platinum rounded-full mx-auto mb-4"></div>
            <h3 class="text-xl font-semibold text-ink mb-2">
              <.link navigate={"/team/#{person["id"]}"}>
                {person["name"]}
              </.link>
            </h3>
            <p class="text-sunset font-medium mb-2">{person["title"]}</p>
            <p class="text-dark-gray text-sm">{person["description"]}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- FAQ Section -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Frequently Asked Questions</h2>
          <p class="text-xl text-dark-gray">Common questions about working with Ratio PBC</p>
        </div>
        <div class="max-w-3xl mx-auto space-y-6">
          <div :for={faq <- @data["faqs"]} class="bg-white p-6 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">{faq["question"]}</h3>
            <p class="text-dark-gray">{faq["answer"]}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-ink text-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Join Our Mission</h2>
        <p class="text-xl mb-8 opacity-90">Ready to make technology work for the public good?</p>
        <a
          href={"mailto:" <> Ratio.email()}
          class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all inline-block"
        >
          Work With Us
        </a>
      </div>
    </section>
    """
  end
end
