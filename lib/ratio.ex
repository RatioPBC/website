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

  def people(data) do
    get_in(data, ["authors"])
    |> Enum.map(fn {id, person} ->
      Map.put(person, "id", id)
    end)
  end

  def person_by_id(data, id) do
    get_in(data, ["authors", id])
  end

  def posts_by_author_id(posts, id), do: Enum.filter(posts, &(&1.author == id))

  def reading_time(content) do
    words = content |> String.split(" ") |> Enum.count()

    mins =
      if words < 360 do
        1
      else
        words / 180
      end
      |> Kernel./(2)
      |> ceil()

    mins
  end

  def awards_and_recognitions?(person) do
    awards_and_recognitions(person) |> Enum.empty?() |> Kernel.not()
  end

  def awards_and_recognitions(person) do
    Map.get(person, "awards_and_recognitions", [])
  end

  def expertise?(person) do
    expertise(person) |> Enum.empty?() |> Kernel.not()
  end

  def expertise(person) do
    Map.get(person, "expertise", [])
  end

  def publications_and_speaking?(person) do
    publications_and_speaking(person) |> Enum.empty?() |> Kernel.not()
  end

  def publications_and_speaking(person) do
    Map.get(person, "publications_and_speaking", [])
  end
end
