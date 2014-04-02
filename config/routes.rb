Rails.application.routes.draw do
  root 'posts#index'

  resources :searches, only: [:index]
  resources :posts, only: [:index]
end
