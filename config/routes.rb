Rails.application.routes.draw do
  resources :user_hours
  resources :hours
  resources :hours_of_operations
  resources :roles
  resources :food_item_donations
  resources :food_item_deliveries
  namespace :api do
    namespace :v1 do
      resources :food_items
      resources :donations
      resources :deliveries
      resources :requests
      resources :deliverers
      resources :receivers
      resources :givers
      resources :users
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
