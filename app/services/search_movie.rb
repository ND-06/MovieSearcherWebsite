class SearchMovie

  def initialize(movie)
    @movie = movie
    Tmdb::Api.key(Rails.application.credentials[:moviedbkey])
  end

  def result
    Tmdb::Movie.find(@movie)
  end
end

 