Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  #get "/users" => "users#index"
  get "/room_images" => "room_images#index"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
