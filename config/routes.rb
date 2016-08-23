Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :bookings, only:[:index]
  namespace  :user do
    resources :bookings, only:[:index, :show, :new, :create, :destroy]
  end
  namespace :chef do
    resources :bookings, only:[:index, :show]
  end
=======

  resources :users, only: [:index, :show]




>>>>>>> 1563d3eee481a52ebf9e139eeb1aac4c0344d876
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
