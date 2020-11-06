Rails.application.routes.draw do

  devise_for :users
  root to:'top#index'
  resources :posts do
  collection do
    get 'search'
  end
end
end
