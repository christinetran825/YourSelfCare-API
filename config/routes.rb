Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :users, :medications, :insurances
    post 'user_token' => 'user_token#create'
    post 'find_user' => 'users#find'
  end

  namespace :api do
    resources :providers do
      resources :departments
    end
  end

  namespace :api do
    resources :behaviors do
      resources :conditions
    end
  end

  get '/api/users/:user', :to => 'api/users#show'
  get '/api/medications/:medication', :to => 'api/medications#show'
  get '/api/insurances/:insurance', :to => 'api/insurances#show'
  get '/api/providers/:provider', :to => 'api/providers#show'
  get '/api/behaviors/:behavior', :to => 'api/behaviors#show'
  get '/api/conditions/:condition', :to => 'api/conditions#show'
  get '/api/providers/:provider_id/departments', :to => 'api/departments#index'
end
