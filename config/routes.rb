Rails.application.routes.draw do
  root to: 'songs#index'

  resources :songs, only: [:index]
  resources :artists, only: [:index, :create, :update]
  resources :riddims, only: [:index]
  resources :labels, only: [:index]
end
