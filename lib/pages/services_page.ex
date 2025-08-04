defmodule RatioPBC.ServicesPage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/services"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-ink to-sunset text-white py-16">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <h1 class="text-4xl md:text-5xl font-bold mb-6">Our Services</h1>
          <p class="text-xl md:text-2xl max-w-3xl mx-auto opacity-90">
            Comprehensive technology solutions designed for public health and human services organizations.
          </p>
        </div>
      </div>
    </section>

    <!-- Services Overview -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-3 gap-8">
          <div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-ink mb-4">Custom Software Development</h3>
            <p class="text-dark-gray mb-6">
              We build tailored applications that fit your organization's unique workflows and requirements.
            </p>
            <ul class="space-y-2 text-dark-gray">
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Web Applications
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Mobile Applications
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                API Development
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Legacy System Modernization
              </li>
            </ul>
          </div>

          <div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-ink mb-4">Data Analytics & Visualization</h3>
            <p class="text-dark-gray mb-6">
              Transform your data into actionable insights with custom dashboards and reporting tools.
            </p>
            <ul class="space-y-2 text-dark-gray">
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Interactive Dashboards
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Automated Reporting
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Data Warehousing
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Predictive Analytics
              </li>
            </ul>
          </div>

          <div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
              <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z"
                >
                </path>
              </svg>
            </div>
            <h3 class="text-2xl font-bold text-ink mb-4">System Integration</h3>
            <p class="text-dark-gray mb-6">
              Connect disparate systems and streamline data flow across your organization.
            </p>
            <ul class="space-y-2 text-dark-gray">
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                API Integration
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Data Migration
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Workflow Automation
              </li>
              <li class="flex items-center">
                <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
                  <path
                    fill-rule="evenodd"
                    d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                    clip-rule="evenodd"
                  >
                  </path>
                </svg>
                Cloud Migration
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Process Section -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Our Process</h2>
          <p class="text-xl text-dark-gray">How we work with you to deliver successful solutions</p>
        </div>
        <div class="grid md:grid-cols-4 gap-8">
          <div class="text-center">
            <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
              1
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Discovery</h3>
            <p class="text-dark-gray">
              We start by understanding your organization's needs, challenges, and goals.
            </p>
          </div>
          <div class="text-center">
            <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
              2
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Design</h3>
            <p class="text-dark-gray">
              We create user-centered designs and technical architectures that solve real problems.
            </p>
          </div>
          <div class="text-center">
            <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
              3
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Development</h3>
            <p class="text-dark-gray">
              We build and test your solution using agile methodologies and best practices.
            </p>
          </div>
          <div class="text-center">
            <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
              4
            </div>
            <h3 class="text-xl font-semibold text-ink mb-2">Support</h3>
            <p class="text-dark-gray">
              We provide ongoing maintenance, training, and support to ensure long-term success.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Case Studies Preview -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Success Stories</h2>
          <p class="text-xl text-dark-gray">Real impact for real organizations</p>
        </div>
        <div class="grid md:grid-cols-2 gap-8">
          <div class="bg-cream p-8 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">State Health Department Dashboard</h3>
            <p class="text-dark-gray mb-4">
              Built a real-time public health monitoring system that reduced reporting time by 75% and improved decision-making during health emergencies.
            </p>
            <div class="flex items-center text-sunset font-medium">
              <span>75% faster reporting</span>
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7">
                </path>
              </svg>
            </div>
          </div>
          <div class="bg-cream p-8 rounded-lg">
            <h3 class="text-xl font-semibold text-ink mb-3">Social Services Case Management</h3>
            <p class="text-dark-gray mb-4">
              Developed an integrated case management system that streamlined workflows and improved client outcomes for a county human services department.
            </p>
            <div class="flex items-center text-sunset font-medium">
              <span>40% improvement in case resolution</span>
              <svg class="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7">
                </path>
              </svg>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- CTA Section -->
    <section class="py-16 bg-ink text-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Ready to Get Started?</h2>
        <p class="text-xl mb-8 opacity-90">
          Let's discuss how we can help modernize your organization's technology.
        </p>
        <a
          href="/contact"
          class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all inline-block"
        >
          Schedule a Consultation
        </a>
      </div>
    </section>
    """
  end
end
