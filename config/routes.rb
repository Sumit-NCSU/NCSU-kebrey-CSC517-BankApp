Rails.application.routes.draw do
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

end
