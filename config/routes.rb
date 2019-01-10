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
      post '/login', to: 'auth#create'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
