Rails.application.routes.draw do
  resources :roomimages
  resources :rs
  get 'reservation/index'
  resources :comments
  devise_for :users, :controllers => {
    :confirmations => 'users/confirmations',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }

  get 'users/index',to: 'users#index'
  get 'rooms/index',to: 'rooms#index'
  get 'reservation',to: 'reservation#index'
  resources :users
  resources :rooms
  resources :reservation
end
