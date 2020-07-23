Rails.application.routes.draw do
  resources :events do
    member do
      post 'join', to: 'invitations#create' 
      delete 'leave', to: 'invitations#destroy'
    end
  end
  resources :users
  resources :sessions
  root "application#home"
  get '/signin', to: 'session#new'
  post '/signin', to: 'session#create'
  get '/log_out', to: 'session#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
