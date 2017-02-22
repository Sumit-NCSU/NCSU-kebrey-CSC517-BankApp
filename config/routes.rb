Rails.application.routes.draw do

  #Admin navigation
  get 'admin/manage_admins', to: 'users#manage_admins'
  get 'admin/manage_accounts', to: 'accounts#index'
  get 'admin/manage_users', to: 'users#manage_users'
  get 'admin/manage_transactions', to: 'transactions#manage'
  
  get 'sessions/new'
  get 'home' => 'sessions#home'
  get 'signup' => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  delete 'logout' => 'sessions#destroy'

  get 'friends/search' => 'friends#search'

  resources :users
  resources :accounts
  resources :friends
  resources :transactions

  root 'sessions#new'
end
