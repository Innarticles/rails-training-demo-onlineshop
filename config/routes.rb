Rails.application.routes.draw do
  
 
  
  # get 'shop/skirts'
  # get 'shop/dress'
  # get 'shop/tops'
  # get 'shop/pants'
  # get 'shop/sandal'
  # get 'shop/jewellery'
  # get 'order/create'
  # get 'order/update'
  # get 'order/delete'
  # get 'checkout/show'
  devise_for :sellers, path: 'admin', path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :users
  resources :products
  resources :orders
  resources :cart_items
  get 'checkout/show'
  get 'dashboard/index', as: 'dashboard'
  resource :cart, only: [:show]

  # authenticated :seller do
  #   path 'dashboard#index', as: :authenticated_root
  # end

  # mount Sidekiq::Web => "/sidekiq" # monitoring console
  root "home#index"
  match ':controller(/:action(/:id))' , :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
