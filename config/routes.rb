Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :roles
      resources :users
      resources :food_items
      resources :donations
      resources :deliveries
      resources :requests
      resources :ratings
      resources :user_hours
      resources :hours
      resources :food_item_donations
      resources :days
      resources :locations
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      post '/picked_up/:id', to: 'deliveries#picked_up'
      post '/delivery_done/:id', to: 'deliveries#delivery_done'
      post '/request_taken/:id', to: 'requests#request_taken'
      post '/add_to_delivery/:id', to: 'donations#add_to_delivery'
      post '/rated/:id', to: 'deliveries#rated'

    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
