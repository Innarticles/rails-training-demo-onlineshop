Rails.application.routes.draw do
  resources :products
  resources :orders
  resources :cart_items
  resource :cart, only: [:show]

  # mount Sidekiq::Web => "/sidekiq" # monitoring console
  root "home#index"
  match ':controller(/:action(/:id))' , :via => [:get, :post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
