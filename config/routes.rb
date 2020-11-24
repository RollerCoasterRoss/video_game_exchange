Rails.application.routes.draw do
  namespace :api do
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    post "/sessions" => "sessions#create"

    get "/video_games" => "video_games#index"
    post "/video_games" => "video_games#create"
    get "/video_games/:id" => "video_games#show"
    patch "/video_games/:id" => "video_games#update"
    delete "/video_games/:id" => "video_games#destroy"

    get "/genres" => "genres#index"
    get "/genres/:id" => "genres#show"

    post "/video_game_genres" => "video_game_genres#create"
    delete "/video_game_genres/:id" => "video_game_genres#destroy"

    get "/cartridges/owned" => "cartridges#owner_index"
    get "/cartridges/borrowed" => "cartridges#borrower_index"
    post "/cartridges" => "cartridges#create"
    get "/cartridges/:id" => "cartridges#show"
    patch "/cartridges/:id" => "cartridges#update"
    delete "/cartridges/:id" => "cartridges#destroy"
  end
end