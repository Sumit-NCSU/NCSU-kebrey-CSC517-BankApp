Rails.application.routes.draw do

  #Admin navigation
  get 'admin/home', to: 'user#admin_home'
  get 'admin/manage_admins', to: 'user#manage_admins'
  #accounts - direct /accounts path
  get 'admin/manage_users', to: 'user#manage_users'
  get 'admin/manage_transactions', to: 'transaction#manage'
  
  get 'sessions/new'
  get 'home' => 'sessions#home'
  get 'signup' => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :accounts
  resources :friends
  resources :transactions

  root 'sessions#new'
end
