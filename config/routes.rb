Rails.application.routes.draw do

  resources :subscriptions

  root 'subscriptions#new'

  namespace :admin do 

  end

end
