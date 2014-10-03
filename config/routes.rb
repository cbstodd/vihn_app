Rails.application.routes.draw do
 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'admin/dashboard#index'

  resources :subscriptions
  resources :providers, only: [:index, :edit, :show, :destroy]
  resources :customers, only: [:index, :edit, :show, :destroy]


end
