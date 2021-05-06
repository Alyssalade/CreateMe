Rails.application.routes.draw do
  resources :dear_mes
  devise_for :users
  resources :nothings
  #get '/home', to: 'pages#home'
  get '/profil', to: 'profil#index'

  root to:'profil#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
