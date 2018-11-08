class MoviesController < ApplicationController
  
  def search
  	@movie = SearchMovie.new.perform
  	@result = SearchMovie.new.perform(params[:search][:movie]) 
  end
  

  def result
  	
  end
end