Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  #get "/users" => "users#index"
  get "/room_images" => "room_images#index"
  get "/rooms" => "rooms#index"

  resources :reservations
end
