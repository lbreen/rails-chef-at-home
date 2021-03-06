Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :bookings, only: :show

  namespace :user do
    resources :bookings, only:[ :index ]
  end

  namespace :chef do
    resources :bookings, only:[ :index ]
  end

  resources :menus, only: [:new, :create, :edit, :update, :destroy]

  resources :menus, only: [:index, :show] do
    resources :bookings, only: [ :new, :create ]
  end

  resources :users, only: [:index, :show]


  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
