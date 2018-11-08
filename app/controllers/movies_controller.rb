class MoviesController < ApplicationController

  def search
  end

  def result
    $results = SearchMovie.new(params[:movie][:search])
    @movie_params = params[:movie][:search]
    if @movie_params.length > 0
      $display = $results.result
      new_uri
      redirect_to '/'
    else
      flash[:danger] = "Searchbar can't be empty"
      redirect_to '/'
    end

  end

  private
  def new_uri
    if !$display.nil?
      $display.each do |result|
        result.poster_path = "https://image.tmdb.org/t/p/w500" + result.poster_path.to_s unless   result.poster_path.nil?
      end
    end
  end
end