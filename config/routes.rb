Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
  get 'users/sign_out', to: 'users/sessions#destroy'
end
  root to: 'homes#top'
  resources :users, only: [:show, :edit,:index,:update,:new]
  resources :books, only: [:new, :index,:edit,:show,:create,:destroy,:update]
  get 'home/about' => 'homes#about', as:'about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
