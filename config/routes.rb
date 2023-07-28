Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  # get "/users" => "users#show"
  get "/room_images" => "room_images#index"
end
