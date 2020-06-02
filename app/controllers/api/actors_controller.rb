class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all
    render 'index.json.jb'
  end

  def show
    @actors = Actor.all
    @actor_query = params["id"]
    @actor = @actors.find_by(id: @actor_query)
    render 'show.json.jb'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for]
  )
    @actor.save
    render 'show.json.jb'
  end

end
