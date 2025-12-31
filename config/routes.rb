Rails.application.routes.draw do
  # Ana sayfa
  root "dashboard#index"

  # Devise
  devise_for :users, controllers: {
    confirmations: "users/confirmations"
  }

  devise_for :admins

  # Kullanıcı listesi (hocanın yaptığı sayfa)
  resources :users, only: [:index]

  # Diğer sayfalar
  get "homepage", to: "home#homepage"

  # Sistem sağlık kontrolü (dokunma)
  get "up" => "rails/health#show", as: :rails_health_check
end
