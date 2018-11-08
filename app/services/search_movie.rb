class SearchMovie
   
  def initialize(movie)
    Tmdb::Api.key(Rails.application.credentials[:moviedbkey])
    @user_search = movie
    @moviesarray = []
  end

  def search
    @movie = Tmdb::Movie.find
    puts @movie
    @movie.each do |movie|
    	temporary_hash = {}
    	  temporary_hash[:name] = movie.title
    	  temporary_hash[:release_date] = movie.release_date
        temporary_hash[:poster_path] = movie.poster_path
      @moviesarray << temporary_hash
    end
    return @moviesarray
  end  
end      