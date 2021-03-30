Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/form', to: 'pages#admin'
  resources :songs, only: [:index, :create, :edit, :update]
  resources :artists, only: [:index, :show, :create, :update]
  resources :riddims, only: [:index, :show, :create, :update]
  resources :labels, only: [:index, :show, :create, :update]
end
