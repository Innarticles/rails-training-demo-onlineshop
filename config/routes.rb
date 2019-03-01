Rails.application.routes.draw do
  
 
  
  devise_for :sellers, path: 'admin', path_names: { sign_in: 'login', sign_out: 'logout'}
  devise_for :users
  resources :products
  resources :orders
  resources :cart_items
  resource :cart, only: [:show]
  # authenticated :seller do
  #   path 'dashboard#index', as: :authenticated_root
  # end

  # mount Sidekiq::Web => "/sidekiq" # monitoring console
  root "home#index"
  match ':controller(/:action(/:id))' , :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
