class Api::ActorsController < ApplicationController

  def all_actors
    @actors = Actor.all
    render 'all_actors.json.jb'
  end

  def first_actor
    @actor = Actor.find_by(id: 4)
    render 'actor.json.jb'
  end

end
