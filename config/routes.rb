Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors" => "actors#index"

    get "/actors/" => "actors#show"

    get "/actors/:id" => "actors#show"

    post "/actors" => "actors#create"

    get "/movies" => "movies#all_movies_action"

    get "/movie" => "movies#get_movie_action"

    get "/by_year" => "movies#each_by_year"

  end
end
