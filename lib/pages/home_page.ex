defmodule RatioPBC.HomePage do
  use Tableau.Page,
    layout: RatioPBC.RootLayout,
    permalink: "/"

  use Phoenix.Component

  # Removed unused import
  # import Ratio.Components

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
          <h1 class="text-4xl md:text-6xl font-bold mb-6">Unlock the power<br>
            <span class="text-cream">of connected data</span>
          </h1>
          <p class="text-xl md:text-2xl mb-8 max-w-3xl mx-auto opacity-90">We solve complex data interoperability challenges and build sustainable data strategies that scale across programs and jurisdictions</p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <a href="/services" class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all">
             Let's talk
            </a></div>
        </div>
      </div>
    </section>
    """
  end

  def mission(assigns) do
    ~H"""
    <!-- Case Study Section -->
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Ratio is a proven delivery partner</h2>
          <p class="text-xl text-dark-gray max-w-3xl mx-auto">Public sector and mission-driven organizations bring Ratio their toughest data integration and system modernization challenges. We're honored to serve leading government agencies throughout the US.</p>
        </div>
        <div class="grid md:grid-cols-2 gap-8">
          <div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
             <svg class="w-12 h-12 icon icon-state-NY" fill="white" viewBox="0 0 24 24" style="transform: translateY(2px)">
             <use xlink:href="#icon-state-NY"></use>
            </svg>
            </div>
        <h3 class="text-xl font-semibold text-ink mb-3">New York State Department of Health</h3>
            <p class="text-dark-gray mb-4">
              Modernized clinical record retrieval system, <b>enabling dynamic queries across the statewide health information exchange</b> to enable data analysis supporting public health emergency response efforts.
              </p>
          </div>
          <div class="bg-cream p-8 rounded-lg">
          <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-1=9 h-9 icon icon-state-CO" fill="white" viewBox="0 0 24 24" style="transform: translateY(2px)">
             <use xlink:href="#icon-state-CO"></use>
            </svg>
            </div>
        <h3 class="text-xl font-semibold text-ink mb-3">Colorado Behavioral Health Administration</h3>
            <p class="text-dark-gray mb-4">
              Developed an interoperability strategy rooted in user research and technology discovery for state behavioral health providers, <b>aimed at reducing administrative burden through system integration.</b>
               </p>
          </div><div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-12 h-12 icon icon-state-NJ" fill="white" viewBox="0 0 24 24" style="transform: translateY(4px)">
             <use xlink:href="#icon-state-NJ"></use>
            </svg>
            </div>
        <h3 class="text-xl font-semibold text-ink mb-3">New Jersey Department of Health</h3>
            <p class="text-dark-gray mb-4">
              Designed and developed automated data collection application and COVID-19 lab result processing pipelines, <b>modernizing infectious disease surveillance and reducing manual data entry</b> across multiple systems.</p>
          </div>
    <div class="bg-cream p-8 rounded-lg">
            <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mx-auto mb-4">
              <svg class="w-12 h-12 icon icon-state-CA" fill="white" viewBox="0 0 24 24" style="transform: translateY(4px)">
             <use xlink:href="#icon-state-CA"></use>
            </svg>
            </div>
        <h3 class="text-xl font-semibold text-ink mb-3">City and County of San Francisco</h3>
            <p class="text-dark-gray mb-4">
              Conducted technical discovery and assessment of the Treasurer and Tax Collector's legacy business tax system, <b>developing modernization strategy and migration roadmap</b> that guided procurement for a new system.
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
     <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">What we do</h2>
          <p class="text-xl text-dark-gray max-w-3xl mx-auto">From strategic planning to technical implementation, we provide end-to-end data consulting services tailored to the complex needs of public sector organizations.</p>
        </div>
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-3 gap-8">
          <div id="#custom-software-development" class="bg-white p-8 rounded-lg">
      <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4">
      </path>
    </svg>
      </div>
      <h3 class="text-2xl font-bold text-ink mb-4">Custom Software Development</h3>
      <p class="text-dark-gray mb-6">
        We deliver tailored applications using agile, human-centered methods and incremental delivery to reduce risk.
      </p>
      <ul class="space-y-2 text-dark-gray">
        <li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Human-centered Research & Design
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Agile Delivery & Product Management
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Web Application Development
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Legacy System Modernization
        </li>
      </ul>
    </div><div id="#data-and-analytics-engineering" class="bg-white p-8 rounded-lg">
      <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z">
      </path>
    </svg>
      </div>
      <h3 class="text-2xl font-bold text-ink mb-4">Data &amp; Analytics Engineering</h3>
      <p class="text-dark-gray mb-6">
        We build robust data infrastructure and analytics capabilities that scale with your organization's needs.
      </p>
      <ul class="space-y-2 text-dark-gray">
        <li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Data Pipeline Design & Implementation
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Data Lake & Warehouse Architecture
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Performance Analytics & Reporting
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Data Quality & Monitoring Systems
        </li>
      </ul>
    </div><div id="#system-integration" class="bg-white p-8 rounded-lg">
      <div class="w-16 h-16 bg-sunset rounded-full flex items-center justify-center mb-6">
        <svg class="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 9l3 3-3 3m5 0h3M5 20h14a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v12a2 2 0 002 2z">
      </path>
    </svg>
      </div>
      <h3 class="text-2xl font-bold text-ink mb-4">Interoperability Consulting</h3>
      <p class="text-dark-gray mb-6">
        We connect disparate systems and enable seamless data flow across programs, departments, and partner organizations.
      </p>
      <ul class="space-y-2 text-dark-gray">
        <li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          Interoperability Roadmap Planning
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
         Standards Implementation (HL7, FHIR)
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
        API Strategy & Design
        </li><li class="flex items-center">
          <svg class="w-4 h-4 text-sunset mr-2" fill="currentColor" viewBox="0 0 20 20">
            <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd">
            </path>
          </svg>
          System Integration Planning
        </li>
      </ul>
    </div>
        </div>
      </div>
    </section>
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl md:text-4xl font-bold text-ink mb-4">Why work with us</h2>
          <p class="text-xl text-dark-gray">We know there's no shortage of technology vendors to choose from. Here's how we're different.</p>
        </div>
        <div class="grid md:grid-cols-3 gap-8">
          <div class="text-center">
      <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
        1
      </div>
      <h3 class="text-xl font-semibold text-ink mb-2">We're public sector data specialists</h3>
      <p class="text-dark-gray">
        <i>We understand your constraints</i> <br><br>Our team brings deep healthcare and public sector experience to modern data challenges, handling HIPAA compliance, regulatory reporting, and complex stakeholder needs.</p>
    </div><div class="text-center">
      <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
        2
      </div>
      <h3 class="text-xl font-semibold text-ink mb-2">We prioritize demos over memos</h3>
      <p class="text-dark-gray">
       <i>We deliver value early and often.</i> <br><br> Nothing beats showing working software to actual users. We cut through ambiguity by delivering and iterating quickly, de-risking the traditional approach to software projects.</p>
    </div><div class="text-center">
      <div class="w-16 h-16 bg-ink text-white rounded-full flex items-center justify-center mx-auto mb-4 text-xl font-bold">
        3
      </div>
      <h3 class="text-xl font-semibold text-ink mb-2">We foster foundations of trust</h3>
      <p class="text-dark-gray">
      <i>We build trust through transparency</i> <br><br> We strive to build authentic, collaborative relationships with our clients. We're confident enough in our expertise to be honest when things go wrong or we don't know the answer.
      </p>
        </div>
      </div></div>
    </section>
    """
  end

  def cta(assigns) do
    ~H"""
    <!-- CTA Section -->
    <section class="py-16 bg-ink text-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <h2 class="text-3xl md:text-4xl font-bold mb-4">Ready to unlock your data's potential?
    </h2>
        <p class="text-xl mb-8 opacity-90">Let's explore how modern data solutions can transform how your organization serves your community.</p>
        <a href="/contact" class="bg-sunset hover:bg-opacity-90 text-white px-8 py-3 rounded-lg font-semibold transition-all inline-block">
          Get In Touch
        </a>
      </div>
    </section>
    """
  end
end
