Rails.application.routes.draw do
  get 'home/about'
  resources :books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :edit, :update, :index]
  root :to => 'home#top'

end
