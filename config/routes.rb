Rails.application.routes.draw do
  get "/users/:id" => "users#show"
  #get "/users" => "users#index"
end
