Rails.application.routes.draw do
 
  root 'subscriptions#new'

  resources :subscriptions
  resources :providers, only: [:index, :show, :destroy]
  resources :customers


  namespace :admin do 

  end

end
