Rails.application.routes.draw do

  resources :mugs
  resources :profiles
  root 'pages#index'

  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
