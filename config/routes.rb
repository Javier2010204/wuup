Rails.application.routes.draw do
  resources :sellers
  resources :products
  resources :categories
  devise_for :users

  authenticated :user do 
    root to: 'home#index'
  end

  unauthenticated :user do
    root to: 'home#unregistered'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
