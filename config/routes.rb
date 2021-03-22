Rails.application.routes.draw do
  root to: 'pages#home'

  resources :songs, only: [:index, :create, :update]
  resources :artists, only: [:index, :create, :update]
  resources :riddims, only: [:index, :create, :update]
  resources :labels, only: [:index, :create, :update]
end
