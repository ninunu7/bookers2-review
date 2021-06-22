Rails.application.routes.draw do
  get 'homes/top'
  get 'homes/about'
  devise_for :users
  root to: 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :books
end