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

  def fragment_from_name(name) do
    fragment =
      String.downcase(name)
      |> String.replace(" ", "-")
      |> String.replace("&", "and")

    "#" <> fragment
  end

  def pages_by_names(data, names) do
    all_pages(data)
    |> Enum.filter(&(&1["name"] in names))
  end

  def all_pages(data), do: get_in(data, ["site", "nav"])

  def related_posts(posts, post) do
    Enum.filter(posts, fn p ->
      MapSet.intersection(
        MapSet.new(p.related),
        MapSet.new(post.related)
      )
      |> Enum.empty?()
    end)
  end

  def email, do: "hello@ratiopbc.com"

  def person_by_id(data, id) do
    dbg(data)
    get_in(data, ["authors", id])
  end
end
