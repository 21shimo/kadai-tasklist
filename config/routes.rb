Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  get 'users/create'

  get 'users/new'

  root to: 'toppages#index'
  
  get 'signup', to: 'users#new'
  
  resources :users, only: [:index, :show, :create]
  resources :tasks
end
