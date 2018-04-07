Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :behaviors
  # resources :users
  # resources :medications
  # resources :insurances
  # resources :providers
  # resources :departments

  namespace :api do
    resources :behaviors, :conditions, :users, :medications, :insurances, :providers, :departments
  end
end
