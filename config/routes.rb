Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :edit,:index]
  resources :books, only: [:new, :index, :show]
  get 'home/about' => 'homes#about', as:'about'
  get 'home/top' => 'homes#top', as:'top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
