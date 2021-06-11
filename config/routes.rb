Rails.application.routes.draw do
  root 'events#index'
  
  get 'signup' => 'users#new', as: 'signup'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#destroy', as: 'logout'
  get 'register' => 'registrations#create', as: 'register'
  get 'cancel_register' => 'registrations#destroy', as: 'cancel_register'

  resources :users
  resources :sessions
  resources :events
  resources :registrations

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
