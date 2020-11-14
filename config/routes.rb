Rails.application.routes.draw do

  root to: 'tasks#index'

  resources :tasks, only: [:index, :edit, :show, :new, :create]
  resources :users, only: [:index, :show, :create]

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'

end