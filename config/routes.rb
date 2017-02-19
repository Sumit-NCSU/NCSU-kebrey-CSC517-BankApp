Rails.application.routes.draw do
<<<<<<< HEAD

  get 'sessions/new'

  get 'signup' => 'users#new'
  get 'login'   => 'sessions#new'
  post 'login'   => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :users
  resources :accounts
  resources :friends
  resources :transactions

  root 'sessions#new'
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user
  resources :accounts
  resources :friend
  resources :transaction

  #Admin navigation
  get 'admin/home', to: 'user#admin_home'
  get 'admin/manage_admins', to: 'user#manage_admins'
  #accounts - direct /accounts path
  get 'admin/manage_users', to: 'user#manage_users'
  get 'admin/manage_transactions', to: 'transaction#manage'

>>>>>>> ec6af02ef9eb1c857073813e97bee937977ef9a2
end
