Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'static_pages#index'
  get '/api/transactions/get_client_token' => "get_client_token"
  get '/api/user' => "api/users#user_profile", defaults: {format: 'json'}
  # get '/api/order_orderproducts/:id' => "api/orders#order_ordersproducts", defaults: {format: 'json'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   namespace :api do
    resources :orders, only: [:index, :create], defaults: { :format => 'json' }
    resources :products, only: [:index], defaults: { :format => 'json' }
    # resources :ingredients, only: [:index], defaults: { :format => 'json' }
    resources :transactions, only: [:create], defaults: { :format => 'json' }


    resources :categories, only: [:index], defaults: { :format => 'json' }
    # do
    #   resources :products, only: [:index], controller: 'category_products', as: 'category_products', defaults: { :format => 'json'}
    # end

    scope :order do
      resources :products, only: [:show], controller: 'order_products', as: 'order_products', defaults: { :format => 'json'}
    end

    # scope :product do
    #   resources :ingredients, only: [:index], controller: 'order_products', as: 'order_products', defaults: { :format => 'json'}
    # end

  end
end
