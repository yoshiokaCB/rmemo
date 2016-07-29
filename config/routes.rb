Rails.application.routes.draw do
  resources :categories
  devise_for :users
  get 'home/index'

  resources :memos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'home#index'
  root 'memos#index'
end
