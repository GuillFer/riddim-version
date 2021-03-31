Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/form', to: 'pages#admin'
  resources :songs, only: [:index, :new, :create, :edit, :update]
  resources :artists, only: [:index, :show, :create, :edit, :update]
  resources :song_artists, only: [:new, :create, :edit, :update, :destroy]
  resources :riddims, only: [:index, :show, :create, :update]
  resources :labels, only: [:index, :show, :create, :update]
end
