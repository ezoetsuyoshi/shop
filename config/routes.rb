Rails.application.routes.draw do

  devise_for :admins
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :carts

  resources :people

  resources :items

  resources :categories, only: [:show]

  resources :deliveries, only: [:create]

  get "/category/:id" => "items#category"
  get "/introduction" => "people#introduction"
  get "/mypage" => "items#mypage"
  root 'items#mypage'
  get "/mypage_index" => "items#mypage_index"

  resources :questions, only: [:index, :new, :create, :destroy]
end
