defmodule RatioPBC.TeamLayout do
  use Tableau.Layout, layout: RatioPBC.RootLayout
  use Phoenix.Component

  import Ratio

  def template(assigns) do
    id = assigns.page.id

    assigns =
      assigns
      |> Map.put(:person, Ratio.person_by_id(assigns.data, id))
      |> Map.put(:articles, Ratio.posts_by_author_id(assigns.posts, id))

    ~H"""
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8"></div>
    </section>
    <section class="py-16 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="grid lg:grid-cols-3 gap-12">
          <div class="lg:col-span-1">
            <div class="bg-cream p-8 rounded-lg text-center">
              <div class={ "w-48 h-48 mask-radial-at-center mask-radial-from-100% bg-cover bg-[url(/images/team/#{@page.id}.png)] rounded-full mx-auto mb-6" }>
              </div>
              <h1 class="text-3xl font-bold text-ink mb-2">{@page.title}</h1>
              <p class="text-xl text-sunset font-medium mb-4">{@person["title"]}</p>
              <div class="flex justify-center space-x-4 mb-6">
                <a href="#" class="text-platinum hover:text-sunset">
                  <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z" />
                  </svg>
                </a>
                <a href="#" class="text-platinum hover:text-sunset">
                  <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24">
                    <path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z" />
                  </svg>
                </a>
                <a href="mailto:hello@ratiopbc.com" class="text-platinum hover:text-sunset">
                  <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 8l7.89 4.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                    >
                    </path>
                  </svg>
                </a>
              </div>
              <div class="text-left space-y-3">
                <div :if={@person["location"]} class="flex items-center text-sm text-dark-gray">
                  <svg
                    class="w-4 h-4 mr-2 text-sunset"
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
                  {@person["location"]}
                </div>
                <div :if={@person["experience"]} class="flex items-center text-sm text-dark-gray">
                  <svg
                    class="w-4 h-4 mr-2 text-sunset"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M21 13.255A23.931 23.931 0 0112 15c-3.183 0-6.22-.62-9-1.745M16 6V4a2 2 0 00-2-2h-4a2 2 0 00-2-2v2m8 0V6a2 2 0 012 2v6a2 2 0 01-2 2H8a2 2 0 01-2-2V8a2 2 0 012-2V6"
                    >
                    </path>
                  </svg>
                  {@person["experience"]} experience
                </div>
                <div :if={@person["alma_mater"]} class="flex items-center text-sm text-dark-gray">
                  <svg
                    class="w-4 h-4 mr-2 text-sunset"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.746 0 3.332.477 4.5 1.253v13C19.832 18.477 18.246 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"
                    >
                    </path>
                  </svg>
                  <span :if={@person["degree"]}>{@person["degree"]}, </span>{@person["alma_mater"]}
                </div>
              </div>
            </div>
          </div>
          <div class="lg:col-span-2">
            <div class="space-y-8">
              <div>
                <h2 class="text-3xl font-bold text-ink mb-4">About {@person["first_name"]}</h2>
                <div id="team_member_content">
                  {{:safe, render(@inner_content)}}
                </div>
              </div>
              <div :if={expertise?(@person)}>
                <h3 class="text-2xl font-bold text-ink mb-4">Expertise</h3>
                <div class="grid md:grid-cols-2 gap-4">
                  <div :for={expertise <- expertise(@person)} class="bg-cream p-4 rounded-lg">
                    <h4 class="font-semibold text-ink mb-2">{expertise["header"]}</h4>
                    <p class="text-dark-gray text-sm">{expertise["description"]}</p>
                  </div>
                </div>
              </div>
              <div :if={publications_and_speaking?(@person)}>
                <h3 class="text-2xl font-bold text-ink mb-4">Publications & Speaking</h3>
                <div class="space-y-4">
                  <div
                    :for={pub <- publications_and_speaking(@person)}
                    class="border-l-4 border-sunset pl-4"
                  >
                    <h4 class="font-semibold text-ink">
                      <span :if={!pub["url"]}>{pub["title"]}</span>
                      <.link :if={pub["url"]} navigate={pub["url"]} class="hover:text-sunset">
                        {pub["title"]}
                      </.link>
                    </h4>
                    <p class="text-dark-gray text-sm">{pub["source"]}, {pub["year"]}</p>
                  </div>
                </div>
              </div>
              <div :if={awards_and_recognitions?(@person)}>
                <h3 class="text-2xl font-bold text-ink mb-4">Awards & Recognition</h3>
                <div class="space-y-3">
                  <div :for={anr <- awards_and_recognitions(@person)} class="flex items-center">
                    <div class="w-3 h-3 bg-sunset rounded-full mr-3"></div>
                    <span :if={!anr["url"]} class="text-dark-gray">
                      {anr["title"]} ({anr["year"]})
                    </span>
                    <.link :if={anr["url"]} navigate={anr["url"]} class="hover:text-sunset">
                      {anr["title"]} ({anr["year"]})
                    </.link>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Recent Articles -->
    <section class="py-16 bg-cream">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-3xl font-bold text-ink mb-8">Recent Articles by {@person["first_name"]}</h2>
        <div class="grid md:grid-cols-2 gap-8">
          <article :for={article <- @articles} class="bg-white rounded-lg overflow-hidden shadow-sm">
            <div class="h-48 bg-platinum"></div>
            <div class="p-6">
              <h3 class="text-xl font-semibold text-ink mb-3">
                <a href={article.permalink} class="hover:text-sunset transition-colors">
                  {article.title}
                </a>
              </h3>
              <p class="text-dark-gray mb-4">
                {article.description}
              </p>
              <div class="flex items-center text-sm text-platinum">
                <span>{Ratio.formatted_date(article.date)}</span>
                <span class="mx-2">•</span>
                <span>{Ratio.reading_time(article.body)} min read</span>
              </div>
            </div>
          </article>
        </div>
      </div>
    </section>
    """
  end
end
