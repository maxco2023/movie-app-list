require "faker"
require "json"
require "uri"
require "open-uri"

Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

url = "https://tmdb.lewagon.com/movie/top_rated"
uri_url = URI.open(url).read
movies = JSON.parse(uri_url)

movies["results"].each do |movie|
  Movie.create(title: movie["original_title"],
                overview: movie["overview"],
                poster_url: "https://image.tmdb.org/t/p/original/#{movie["backdrop_path"]}",
                rating: movie["vote_average"])
end
