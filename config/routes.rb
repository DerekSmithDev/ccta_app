Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post"/users" => "users#create"

    post "/sessions" => "sessions#create"
    get"/favorites" => "favorites#index"
    post"/favorites" => "favorites#create"
    get"/favorites/:id" => "favorites#show"
    patch"/favorites/:id" => "favorites#update"
    delete"/favorites/:id" => "favorites#destroy"

    # L Stops
    get "/lstops" => "lstops#index"
    post "/lstops" => "lstops#index"
    post "/lstops" => "lstops#create"
    get "/lstops/:id" => "lstops#show"
    patch "/lstops/:id" => "lstops#update"
    delete "/lstops/:id" => "lstops#destroy"

    # Stations
    get "/stations" => "stations#index"
    post "/stations" => "stations#create"
    get "/stations/:id" => "stations#show"
    patch "/stations/:id" => "stations#update"
    delete "/stations/:id" => "stations#destroy"

    # Divvy Stops 
    get "/divvystops" => "divvystops#index"
    post "/divvystops" => "divvystops#create"
    get "/divvystops/:id" => "divvystops#show"
    patch "/divvystops/:id" => "divvystops#update"
    delete "/divvystops/:id" => "divvystops#destroy"

  end
end
