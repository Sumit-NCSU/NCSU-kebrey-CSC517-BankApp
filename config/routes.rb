Rails.application.routes.draw do

  #Admin navigation
  #get 'admin/manage_admins', to: 'users#manage_admins'
  #get 'admin/manage_accounts', to: 'accounts#index'
  get 'users', to: 'users#index_users'
  get 'admins', to: 'users#index_admins'
  
  get 'sessions/new'
  get 'home' => 'sessions#index'
  get 'signup' => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'withdraw' => 'transaction#'
  get 'deposit' =>  'transaction#'
  delete 'logout' => 'sessions#destroy'

  get 'friends/search' => 'friends#search'

  resources :users
  resources :accounts
  resources :friends
  resources :transactions

  root 'sessions#new'
end
