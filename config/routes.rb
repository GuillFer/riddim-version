Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/form', to: 'pages#admin'
  get 'producers', to: 'artists#producers'
  get 'songs/originals', to: 'songs#originals'
  get 'songs/instrumentals', to: 'songs#instrumentals'
  get 'riddims/random', to: 'riddims#random'
  resources :songs, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :artists, only: [:index, :show, :create, :edit, :update]
  resources :song_artists, only: [:new, :create, :edit, :update, :destroy]
  resources :riddims, only: [:index, :show, :create, :update]
  resources :labels, only: [:index, :show, :create, :edit, :update]
  resources :members, only: [:new, :create, :edit, :update]
end
