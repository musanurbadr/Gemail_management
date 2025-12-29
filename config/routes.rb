Rails.application.routes.draw do
  devise_for :admins
  # 1. Ana Sayfa (Site açılınca görünen yer)
  root "dashboard#index"
  

  # 2. Üyelik İşlemleri (Özel onay kontrolcüsü ile birlikte)
  devise_for :users, controllers: { confirmations: 'users/confirmations' }

  # 3. Kullanıcı Listesi (Hocanın yaptığı sayfa)
  resources :users, only: [:index]

  # 4. Diğer Sayfalar
  get "homepage", to: "home#homepage"
  
  # Sistem sağlık kontrolü (Rails 7+ ile otomatik gelir, dokunma)
  get "up" => "rails/health#show", as: :rails_health_check
end