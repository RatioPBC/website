defmodule RatioPBC.ContactPage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/contact"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-ink text-white py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h1 class="text-4xl md:text-5xl font-bold mb-6">Get In Touch</h1>
          <p class="text-xl md:text-2xl max-w-3xl mx-auto opacity-90">
            Ready to transform your organization's technology? Let's start the conversation.
          </p>
        </div>
      </div>
    </section>

    <!-- Contact Form Section -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-2 gap-12">
          <div>
            <h2 class="text-3xl font-bold text-ink mb-6">Let's Work Together</h2>
            <p class="text-lg text-dark-gray mb-8">
              Whether you're looking to modernize existing systems, build new applications, or improve your data analytics capabilities, we're here to help. Fill out the form and we'll get back to you within 24 hours.
            </p>

            <div class="space-y-6">
              <div class="flex items-start">
                <div class="w-12 h-12 bg-sunset rounded-full flex items-center justify-center flex-shrink-0 mr-4">
                  <svg
                    class="w-6 h-6 text-white"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                    >
                    </path>
                  </svg>
                </div>
                <div>
                  <h3 class="font-semibold text-ink mb-1">Email</h3>
                  <p class="text-dark-gray">hello@ratiopbc.com</p>
                </div>
              </div>

              <div class="flex items-start">
                <div class="w-12 h-12 bg-sunset rounded-full flex items-center justify-center flex-shrink-0 mr-4">
                  <svg
                    class="w-6 h-6 text-white"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
                    >
                    </path>
                  </svg>
                </div>
                <div>
                  <h3 class="font-semibold text-ink mb-1">Phone</h3>
                  <p class="text-dark-gray">(555) 123-4567</p>
                </div>
              </div>

              <div class="flex items-start">
                <div class="w-12 h-12 bg-sunset rounded-full flex items-center justify-center flex-shrink-0 mr-4">
                  <svg
                    class="w-6 h-6 text-white"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"
                    >
                    </path>
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"
                    >
                    </path>
                  </svg>
                </div>
                <div>
                  <h3 class="font-semibold text-ink mb-1">Office</h3>
                  <p class="text-dark-gray">Washington, DC<br />Remote-first team</p>
                </div>
              </div>
            </div>
          </div>

          <div class="bg-cream p-8 rounded-lg">
            <form class="space-y-6">
              <div class="grid md:grid-cols-2 gap-6">
                <div>
                  <label for="firstName" class="block text-sm font-medium text-ink mb-2">
                    First Name
                  </label>
                  <input
                    type="text"
                    id="firstName"
                    name="firstName"
                    class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                  />
                </div>
                <div>
                  <label for="lastName" class="block text-sm font-medium text-ink mb-2">
                    Last Name
                  </label>
                  <input
                    type="text"
                    id="lastName"
                    name="lastName"
                    class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                  />
                </div>
              </div>

              <div>
                <label for="email" class="block text-sm font-medium text-ink mb-2">Email</label>
                <input
                  type="email"
                  id="email"
                  name="email"
                  class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                />
              </div>

              <div>
                <label for="organization" class="block text-sm font-medium text-ink mb-2">
                  Organization
                </label>
                <input
                  type="text"
                  id="organization"
                  name="organization"
                  class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                />
              </div>

              <div>
                <label for="projectType" class="block text-sm font-medium text-ink mb-2">
                  Project Type
                </label>
                <select
                  id="projectType"
                  name="projectType"
                  class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                >
                  <option value="">Select a project type</option>
                  <option value="software-development">Custom Software Development</option>
                  <option value="data-analytics">Data Analytics & Visualization</option>
                  <option value="system-integration">System Integration</option>
                  <option value="consultation">Consultation</option>
                  <option value="other">Other</option>
                </select>
              </div>

              <div>
                <label for="message" class="block text-sm font-medium text-ink mb-2">
                  Tell us about your project
                </label>
                <textarea
                  id="message"
                  name="message"
                  rows="4"
                  class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                  placeholder="Describe your needs, challenges, and goals..."
                ></textarea>
              </div>

              <div>
                <label for="budget" class="block text-sm font-medium text-ink mb-2">
                  Estimated Budget Range
                </label>
                <select
                  id="budget"
                  name="budget"
                  class="w-full px-4 py-3 border border-platinum rounded-lg focus:ring-2 focus:ring-sunset focus:border-transparent"
                >
                  <option value="">Select budget range</option>
                  <option value="under-50k">Under $50,000</option>
                  <option value="50k-100k">$50,000 - $100,000</option>
                  <option value="100k-250k">$100,000 - $250,000</option>
                  <option value="250k-500k">$250,000 - $500,000</option>
                  <option value="over-500k">Over $500,000</option>
                </select>
              </div>

              <button
                type="submit"
                class="w-full bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all"
              >
                Send Message
              </button>
            </form>
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
          <div class="bg-white p-6 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">
              What types of organizations do you work with?
            </h3>
            <p class="text-dark-gray">
              We primarily work with public health departments, human services agencies, nonprofits, and other organizations focused on serving communities and the public good.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">How long do projects typically take?</h3>
            <p class="text-dark-gray">
              Project timelines vary based on scope and complexity. Simple integrations might take 2-3 months, while comprehensive custom applications can take 6-12 months or more. We'll provide a detailed timeline during our initial consultation.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">
              Do you provide ongoing support after launch?
            </h3>
            <p class="text-dark-gray">
              Yes, we offer comprehensive support and maintenance packages to ensure your systems continue to operate smoothly. This includes bug fixes, security updates, and feature enhancements.
            </p>
          </div>
          <div class="bg-white p-6 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">
              Can you work with our existing systems?
            </h3>
            <p class="text-dark-gray">
              Absolutely. We specialize in integrating with existing systems and can help modernize legacy applications while preserving your valuable data and workflows.
            </p>
          </div>
        </div>
      </div>
    </section>
    """
  end
end
