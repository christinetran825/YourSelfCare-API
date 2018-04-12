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

  get '/api/users/:user', :to => 'api/users#show'
  get '/api/medications/:medication', :to => 'api/medications#show'
  get '/api/insurances/:insurance', :to => 'api/insurances#show'
  get '/api/providers/:provider', :to => 'api/providers#show'
  get '/api/behaviors/:behavior', :to => 'api/behaviors#show'
  get '/api/conditions/:condition', :to => 'api/conditions#show'

end
