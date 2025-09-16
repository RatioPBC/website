defmodule Ratio.Components do
  use Phoenix.Component

  attr(:post, :map, required: true)
  attr(:data, :map, required: true)

  def card(assigns) do
    ~H"""
    <article class="bg-white rounded-lg overflow-hidden shadow-sm">
      <div class="h-48 bg-platinum"></div>
      <div class="p-6">
        <div class="text-sm text-sunset font-medium mb-2">{@post.post_type}</div>
        <h3 class="text-xl font-semibold text-ink mb-3">
          <a href={@post.permalink} class="hover:text-sunset transition-colors">
            {@post.title}
          </a>
        </h3>
        <p class="text-dark-gray mb-4">
          {@post.description}
        </p>
        <div class="flex items-center text-sm text-platinum">
          <span>{Ratio.author_name(@data, @post.author)}</span>
          <span class="mx-2">•</span>
          <span>{Ratio.formatted_date(@post.date)}</span>
        </div>
      </div>
    </article>
    """
  end

  slot(:inner_block, required: true)
  attr(:service, :map, required: true)
  attr(:class, :string)

  def service_link(assigns) do
    ~H"""
    <.link navigate={"/services" <> Ratio.fragment_from_name(@service["name"])} class={@class}>
      {render_slot(@inner_block, @service)}
    </.link>
    """
  end
end
