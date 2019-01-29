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
  end
end
