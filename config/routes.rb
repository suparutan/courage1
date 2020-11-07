Rails.application.routes.draw do

  devise_for :users
  root to:'top#index'
  namespace :posts do
  resources :searches, only: :index
  end
  resources :posts do
end
end
