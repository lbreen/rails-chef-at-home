Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :bookings, only:[:index]
  resources  :users do
    resources :bookings, only:[:index, :show, :new, :create, :destroy]
  end
  namespace :admin do
    resources :bookings, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
