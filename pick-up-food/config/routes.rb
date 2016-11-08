Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace :api do
    resources :orders, only: [:index], defaults: { :format => 'json' }
    resources :products, only: [:index], defaults: { :format => 'json' }
    resources :ingredients, only: [:index], defaults: { :format => 'json' }
    resources :pickup_codes, only: [:index], defaults: { :format => 'json' }

    resources :categories, only: [:index], defaults: { :format => 'json' } do
      resources :products, only: [:index], controller: 'category_products', as: 'category_products', defaults: { :format => 'json'}
    end

    scope :order do
      resources :products, only: [:index], controller: 'order_products', as: 'order_products', defaults: { :format => 'json'}
    end

    scope :product do
      resources :ingredients, only: [:index], controller: 'order_products', as: 'order_products', defaults: { :format => 'json'}
    end

  end
end
