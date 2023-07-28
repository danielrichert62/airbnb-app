Rails.application.routes.draw do
  #  root "home#index"
  get "/users/:id" => "users#show"
  get "/room_images" => "room_images#index"
  get "/" => "homes#index"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  delete "/logout" => "sessions#destroy"
  get "/rooms" => "rooms#index"
end
