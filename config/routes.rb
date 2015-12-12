Rails.application.routes.draw do
  root to: 'site#home'
  resources :users, only: [:show, :new, :create, :destroy]
  resources :products, only: [:index, :show, :new, :create, :destroy]
end
