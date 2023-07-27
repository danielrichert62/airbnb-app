Rails.application.routes.draw do
  get "/rooms" => "rooms#index"

  resources :reservations
end
