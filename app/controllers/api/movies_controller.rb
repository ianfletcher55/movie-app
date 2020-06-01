class Api::MoviesController < ApplicationController

  def all_movies_action
    @movies = Movie.all
    render 'all_movies.json.jb'
  end

  def get_movie_action
    id = params["id"]
    @movie = Movie.find_by(id: id)
    render 'get_movie.json.jb'
  end

  def each_by_year
    Movie.find_each do |movie|
      Movie.year(movie).deliver_now
    end
  end

end
