Rails.application.routes.draw do
  resources :subscriptions

  root 'subscriptions#new'

end
