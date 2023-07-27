Rails.application.routes.draw do
  get "/room_images" => "room_images#index"
  get "/rooms" => "rooms#index"

  resources :reservations
end
