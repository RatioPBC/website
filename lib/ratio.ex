defmodule Ratio do
  def author_name(data, short_name) do
    author(data, short_name)["name"]
  end

  def author_title(data, short_name) do
    author(data, short_name)["title"]
  end

  def author(data, short_name) do
    Map.fetch!(data["authors"], short_name)
  end

  def formatted_date(date) do
    Calendar.strftime(date, "%B %d, %Y")
  end

  def related_posts(posts, post) do
    Enum.filter(posts, fn p ->
      MapSet.intersection(
        MapSet.new(p.related),
        MapSet.new(post.related)
      )
      |> Enum.empty?()
    end)
  end
end
