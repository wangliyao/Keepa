Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get '/auth/:provider/callback' => 'sessions#create'
  resources :sessions, only: [:new, :create]
  get 'logout', to: 'sessions#destroy', as: :logout
  resources :users, only: [:new, :create] do
    collection do
      get 'access_key'
    end
  end
  namespace :api, except: [:new, :edit] do
    namespace :v1, except: [:new, :edit] do
      resources :tasks, only: [:index]
      get '/login', to: 'users#index'
    end
  end
end
