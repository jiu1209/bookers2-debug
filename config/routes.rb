Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :homes,only: [:top,:about]

  resources :books do
  resource :favorites,only: [:create,:destroy]
  resources :book_comments, only: [:create, :destroy]
 end
  root 'home#top'
  get 'home/about'
 end
