Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check


  get "homepage", to: "home#homepage"
  get "dashboard", to: "home#dashboard"

  # Defines the root path route ("/")
  # root "posts#index"
end
