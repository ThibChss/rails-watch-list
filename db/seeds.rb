url = 'https://tmdb.lewagon.com/movie/top_rated'
movies = JSON.parse(URI.open(url).read)

puts 'Destroying all movies'
Movie.destroy_all

puts 'Creating movies...'
movies["results"].each do |movie|
    Movie.create(
      title: movie["original_title"],
      rating: movie["vote_average"],
      overview: movie["overview"],
      poster_url: movie["poster_path"]
    )
end

puts 'All done'
