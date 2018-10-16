class MoviesController < ApplicationController
  def index
    movie = Movie.order("created_at DESC")
  end
end
