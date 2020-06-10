Rails.application.routes.draw do
  resources :planetas
  resources :usuarios
  resources :noticias
  get 'home/index'
  root 'home#index'
# get 'signup', to: 'usuarios#new', as: 'signup'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]
end
