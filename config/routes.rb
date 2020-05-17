Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  resources :homes,only: [:top,:about]
  root 'home#top'
  get 'home/about'
 end
