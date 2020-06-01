Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#all_actors"

    get "/actor1" => "actors#first_actor"

    get "/movies" => "movies#all_movies_action"

    get "/movie" => "movies#get_movie_action"

  end
end
