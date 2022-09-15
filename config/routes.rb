Rails.application.routes.draw do

  get 'home/about', to: 'homes#about', as: 'home_about'
  devise_for :users
  root to: 'homes#top'

  resources :books, only: [:index, :show, :new, :create, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index]

end
